Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2CD7CD5BB0
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 09:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvBCGBjcKg6LLBF6Yhce8oFXgSJTwPIPrYzygLKt8Lk=; b=JmMKomV5DrfsAa
	tsfxoc9PImWXdQprYzDEnEGr6w9GH3B37QpujfV/q6urCOdF/6vNx8PCcA+WjIHoGys28CaQidBa6
	0VuhH5lLvmswYC2XNr8yeAsT8Tt/CCEaSxVcfMW336YEkeU2b6UVhjI6R1NhB5DIjBjgglhMV1gwy
	5W6tr7FvRd1xqvl4egL31hGx3Ws4smyoWVWS9RKlLZIpISI3g3rPrzjDt/cBGnNn2zhFxWeZ2jTT6
	7Z644vi+XsHOAPx39aLHfPK1eVJkB6EDed5u6RQL3OwoN7fZkyxwr3irAGRAZJLH7HAgYqRJNON0k
	WyNZHQ7ATZLZ+o538Xmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQME4-0000000AL0v-1wyk;
	Fri, 22 May 2026 09:31:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQME1-0000000AL0E-2lit
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 09:31:26 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64M6UPME1959859
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 09:31:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CmuyIiSD8BrtuoCQP+CAPpqrC+rs5hG3BsCae1P/mCs=; b=YHicWvgIi1t1p7dy
	a53VKRNrD/g7G30Spr4USby0aatZy/IbRFe86lZr31rcihEBfAhGBsSRRmeQ4I/0
	SgHEuUunAOE+sXrQO2oH6dFz+vkG4JzXFDQQYihTv8m8EczHzOKkvXArQhrIWC/K
	5IBg/PzZy/m0W5HYfV3LcNk/CBwvUO2+3EJFMqq1elHuVY9dMmMp8vjqoKHtyx3B
	rIdTEeMCrcAcw0u9xWXsagl0W4xJ8O9hiX+Lk816HvLR1WVElA2+M7sppAZoj9U6
	JEKE0PUXNER/UnrSTAcI1+dOF9IUgJfB1bZXVEPUWoNlnZsyqsogdoPSFrUJvFQN
	6DOXYA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eahxeruud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 09:31:24 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-369ef27fd09so5405021a91.3
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 02:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779442283; x=1780047083; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CmuyIiSD8BrtuoCQP+CAPpqrC+rs5hG3BsCae1P/mCs=;
        b=ZvBY/cL7vuTzgQxW4r1TeebSfDZa36xCgdB/+ruBAYwoTVM+B3UC1J8tNnIrUmPPcS
         Viep+A7K2mWO8lfveRC8pg1/OHSP5gHtUq2haxh2vythbYDSakv/mAxyRL9kWlc/3EnP
         H/Zz8LAG5xZ7TQpCF0BqL/2Jk+tatSeLzOmw4wjH88VikkcItNe/lCV1+U6dXjqdwYf+
         p6NIhR5IcXZWGW0fcJ+pLa1QA7XXCkCy0LPZWGMHpJgdVoMvJdaCohFtzlGE7dbNJUfz
         Isuo5VnCkIY/2y42vCBWFRIfiY7EmQQOYVWUbZyHKpEP7moeEfwNv4z5S6IrprCFIOh8
         6p7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779442283; x=1780047083;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CmuyIiSD8BrtuoCQP+CAPpqrC+rs5hG3BsCae1P/mCs=;
        b=igEtIVn6ziwxT+nOU5Fb54a3i9WoQMLTmqO38RdxJ/gMvDw0SDc9ka15/Ngwo2Gtvk
         44nPlJEO3reqMO00B0GNp8NamhcQmru2HjFbHqnpWm6pIUE+ZQ9Wl3xLdKVriIoiRQkZ
         445zhP7qVv4rPhF4+9/RS/u8aAyWaN/ssEP85upFMnW4ucuqam1Ff8XxRLJWp4cmHIL5
         6sLNKIBOhnw0WRAJk1QJqVugxLFnyuChJfusc0CbLkThd84nIHxdLMe0BsnFg5WeRcFV
         FIRuM0Nvhh8K37/8GKWvJEuGs4Zp5H/XnJ7zfJaMhfKbkcm8+WmMeLGZa7SWodm2zkr4
         tV1Q==
X-Forwarded-Encrypted: i=1; AFNElJ/QbfNHQAOG10KJwU1rmjqT6ksDuU6CJMzonbZxR0eRG0yNes5xCO24nDdfnWCjS1xQHYkeFk0y/44=@lists.infradead.org
X-Gm-Message-State: AOJu0YyJiYJlQ94rh/ylKu1cH3xZcaCVcbqUll9k0DhJLnzHFbtSdCzJ
	POkM+ys6SQfCEJUIYx1ApBxDhkJAcBRNqRCpjmS2b3JrDjHeid/AeWmx4OZMuxdPhc2aUuYMXBF
	TSELXjVKc8r90tBZRzgRHtJ/+2qUJ2rXjVAi6ph5WHBjeAh5dmsbRtKZGPXvQfa6gOtEw
X-Gm-Gg: Acq92OEmJIL3LXiKWK1cjq2hYHfLpUt/FfSyug8uBSi3cEDUlXlho3uQeNvoeo6jr58
	HS3bHyjbXkPxPvnhvrQ/jnSf1HAenrUyzzFnKJr9+aDoBivssq9CNU3Bq4U2Npd5k4QCTdXIdFd
	e4Tszfcn7EDJfRkfznuZUlbkOMj2dqfzUT/DsJ3se8MR7NCVeLzHfs4T2waplb5uDWyOCjjQavB
	0h12ZJ4ydpes52A38Ns4HaJfzeUfkJeSSV/47f/BS9LTixRStxUFdXjmvKOZARxtQW9umsxN/ZC
	SdzU2Y61brYVmbKp7ZuIyr02G8PCZjQb0Ys8xBhK7R6rNRkic5eAt0+GOlyZxklu0JWjct7O4h8
	m80zjv5L5Bh1OJI5T8Qq6DkSp2HtLBKk11gjsqJ8GTdmjqMaZP+bDeLk/wL+0MquI
X-Received: by 2002:a17:90b:2584:b0:368:6159:980c with SMTP id 98e67ed59e1d1-36a676276b9mr2733220a91.20.1779442283321;
        Fri, 22 May 2026 02:31:23 -0700 (PDT)
X-Received: by 2002:a17:90b:2584:b0:368:6159:980c with SMTP id 98e67ed59e1d1-36a676276b9mr2733193a91.20.1779442282825;
        Fri, 22 May 2026 02:31:22 -0700 (PDT)
Received: from [10.92.193.94] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36a6772f486sm936162a91.2.2026.05.22.02.31.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2026 02:31:22 -0700 (PDT)
Message-ID: <5593d136-569e-4ba9-9a2f-e635125899aa@oss.qualcomm.com>
Date: Fri, 22 May 2026 15:01:16 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] PCI: qcom: Add Support for Eliza
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
 <20260521-eliza-v1-3-97cdbe88389d@oss.qualcomm.com>
 <20260522-discerning-sympathetic-moth-daa9e7@quoll>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20260522-discerning-sympathetic-moth-daa9e7@quoll>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIyMDA5MyBTYWx0ZWRfX136lHQXzhl4U
 MEEj5cNJc9KTeoMoD6fw/F6eByAa7Iz87tM20i+U4fe1Puy1lGp8IwnwQcpEnRoruKsdUwF3Rlx
 mPh1wF1diAeHgCaIIZYTD88/c8qQQNGnihqcQ1/Nk4X19MhYCfQpeeUj7c306GzggbD48I4Wy0R
 oE/H0/w7Gxof3bhkqUa1I37osd7PS/4TGIGNxk3j2ddvLVkB0YThm1ALJvIi4PzaRPRwUdDiK3W
 n9EqdAqn7DYx49xy9f8Q7zln4IFCfzMUhysvEJJqQo3t+BWmy6mPcq6Q/k4x4oaHvmkJjpRr+7H
 pUzJlYXMtfjmnLKFxI++OqltVVrdtVJl1k6M+vqWLLfOXbbL5wuCtQFQNub3g0xNnWZZz6iaczK
 NePiOXRIAQWYEKDJ2PNYC97ry0+obJjCjjcidVSHXm2rla8t1iwfhdUL2n8WLvwGP2BC0wA0u5n
 7XkEg53HzZW9A+UzWgw==
X-Proofpoint-GUID: gvajTyCmWX30bEy89mU2URm2acqCFrsh
X-Proofpoint-ORIG-GUID: gvajTyCmWX30bEy89mU2URm2acqCFrsh
X-Authority-Analysis: v=2.4 cv=ar2CzyZV c=1 sm=1 tr=0 ts=6a10226c cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=jbukJSVhv8iEu2CO0E0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-22_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0 adultscore=0
 clxscore=1015 priorityscore=1501 phishscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605220093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_023125_819052_EDFC6E01 
X-CRM114-Status: GOOD (  18.61  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiA1LzIyLzIwMjYgMTI6MjEgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24g
VGh1LCBNYXkgMjEsIDIwMjYgYXQgMDc6MzU6MzFQTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFueWEg
Q2h1bmRydSB3cm90ZToKPj4gQWRkIHN1cHBvcnQgZm9yIEVsaXphIHNvYywgd2hpY2ggaGFzIHR3
byBQQ0llIGNvbnRyb2xsZXJzIGNhcGFibGUKPj4gb2YgOEdUL3MgWDEgYW5kIDhHVC9zIFgyLCB1
c2luZyB0aGUgY2ZnXzFfOV8wIGNvbmZpZ3VyYXRpb24uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEty
aXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29t
Pgo+PiAtLS0KPj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIHwgMSAr
Cj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIGIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1xY29tLmMKPj4gaW5kZXggYWY2YmY1Y2NlNjViLi40MGYwYTVmMjQ3ZWIg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4+
ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4+IEBAIC0yMTIz
LDYgKzIxMjMsNyBAQCBzdGF0aWMgaW50IHFjb21fcGNpZV9yZXN1bWVfbm9pcnEoc3RydWN0IGRl
dmljZSAqZGV2KQo+PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcWNvbV9wY2ll
X21hdGNoW10gPSB7Cj4+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtYXBxODA2NCIsIC5k
YXRhID0gJmNmZ18yXzFfMCB9LAo+PiAgCXsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLWFwcTgw
ODQiLCAuZGF0YSA9ICZjZmdfMV8wXzAgfSwKPj4gKwl7IC5jb21wYXRpYmxlID0gInFjb20scGNp
ZS1lbGl6YSIsIC5kYXRhID0gJmNmZ18xXzlfMCB9LAo+IFNvIGNvbXBhdGlibGUgd2l0aCBzbTg1
NTAuIFdoeSBpc24ndCB0aGlzIGV4cGxhaW5lZCBpbiBjb21taXQgbXNnIG9mCj4gdGhlIGJpbmRp
bmc/Ck5vLCBQQ0llIGNvbnRyb2xsZXIgaXMgbm90IGNvbXBhdGlibGUgd2l0aCBzbTg1NTAsIHdl
IGFyZSBqdXN0IHJlIHVzaW5nIHRoZSBib290CnNlcXVlbmNlIHVzZWQgYnkgdGhlIHNtODU1MC4K
PiBBbnl3YXksIGRyb3AgdGhlIGNoYW5nZSwgcG9pbnRsZXNzLiBMb29rIGhvdyBvdGhlciBkZXZp
Y2VzIGhhbmRsZSB0aGlzIC0KPiBkbyB5b3Ugc2VlIGthYW5hcGFsaSBoZXJlPyBOby4KQXMgd2Ug
YXJlIGdvaW5nIHRvIHVzZSBkaWZmZXJlbnQgZHRzIHNjaGVtYSBmb3IgdGhpcyBjb250cm9sbGVy
IHdlIGNhbid0CnJlYWxseSByZS11c2UKbGlrZSBob3cgd2UgaGF2ZSBkb25lIGluIGthYW5hcGFs
aSBjYXNlLsKgIGthYW5wYWxpIGlzIHJldXNpbmcgc204NTUwIHNjaGVtYSwgd2hlcmUKdGhpcyBj
b250cm9sbGVyIGNhbid0IHVzZSBzbTg1NTAgc2NoZW1hLCBhcyBzb21lIGNsb2NrcyBhcmUgZGlm
ZmVyZW50LgoKLSBLcmlzaG5hIENoYWl0YW55YS4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0
b2YKPgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
