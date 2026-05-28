Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 154A7CD4F54
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 13:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EN2rPVyl8FjHEP7h9kI8eMXPah18aqQZYKVF+B2spjM=; b=GMIjYP7esXYi2U
	ef9QVhVj+VGxIQrvI5+YcTXqNgDUkFGMhjxVXgHtVmdfd+v+BaQuJcyw5QgpwiNd5Vy2+yNg41mdh
	l4u9VICOmkklEgJwMiTkVzE6SdWomRHzB93Zre/T2FZRSM5THr3kcmdgXGB0o8RxcmaF5JIaiVzr7
	nq4by6v+MICqTzlmpTp6xaTwvKTYYmnbkDt9kb5BRG8jkIJOBxb72n5G3WXRJwlVuxw1eWF4HstV2
	wxQhRdGZ86HULExxbRIqcUM/vtV6iFIwTvZ7Ud7XiHuE/lay1otiCKAfN35r/8LixdPC6c4fn27nO
	zjEA0HNO44rHiEffwP5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSaaT-00000005ls6-2L6q;
	Thu, 28 May 2026 13:15:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSaaQ-00000005lrl-3V2h
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 13:15:48 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64S8vlDH298274
	for <linux-phy@lists.infradead.org>; Thu, 28 May 2026 13:15:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tr7DqnhWUk+VrPGKd9HD4o4Q1JTv5aQY1ZNREgd9xhQ=; b=MHQkpna+qodOr+Mp
	tyquD5PKaWGON31cG/1uUqINKyXCUiFUDRLF7+fBHdqwU1YETR5WnDmilF66iUh7
	u45JlvuNhY57I9T/gVmlZucDnazikH8A88Zi3i82HZEnfXpg2Ak71JdxFbdA1ugt
	oz1PspDIACg8PY8Fj1OXoXRIeQz6RGMOMfGJ1kmdVs2e5LLpmLhNpzqqPkwR0Lfb
	+PCWtU8uCFYDLbisOvU/hQtrioLpU3l0sHkJ5wJgLeocW3eSb+kN+iIx8UXwqCge
	H+WcFz2iDE+pNOZdBMeoCGyyV4bBnXC91mYvo/p7OEzRMRu+HIbrkGpVgpmQE6Hl
	oogW1w==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ee7yaju00-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 28 May 2026 13:15:45 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-304d0d0b28eso2204437eec.0
        for <linux-phy@lists.infradead.org>; Thu, 28 May 2026 06:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779974144; x=1780578944; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Tr7DqnhWUk+VrPGKd9HD4o4Q1JTv5aQY1ZNREgd9xhQ=;
        b=jRJLlP7KYbbtMe7FMG1sGgDF7evR3IOCr79fEzpjnnciaNYA1k1O58Ds3rAlVtTpHI
         sCCSSTe4HzIxTf+lMEi2ejsPAHiEbMzjrkiNoE+XUe5uMvVMrCl70ZNrwHGBqdfHTaZM
         6gUh0dBCLuxfmqvzdwGoqe/2ko/hQClZC8z49E6Hq287gB+ZsnndRGrG0/J+2r45xpMy
         xuEwL6U/OFfDVnevQUH5KUFiVd/uXdsLlA0d1gu9vv7jwMY1bVsWF6/8P26zQQYiaPr/
         U2iPRhZ7hPvaHcvXqFIjn+7dgfopNoEORMlOXXBrZG9vinHbTe2yznVokKhV03qIll1W
         VKsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779974144; x=1780578944;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tr7DqnhWUk+VrPGKd9HD4o4Q1JTv5aQY1ZNREgd9xhQ=;
        b=q4RWMdRCpIVSQN5IgbJ7zuZpb63N71Y6ImmGQii8dk2Q7J7xxvnewZoS4F0ZaC03L3
         MjsvTi2rpw+wc4QnJpghczhhJK5o+oOFB8WSRIf8DtToQgEpCegXtb9RsM6lYQq0Q8v/
         h8AOLrXeLH66kpdfaD4Ze+gUncJDzDnQaFEKTuR2bilK5VD739ioPIi/WcKpCJqhOLDS
         Cs+DO7th/Z9sqGFTDIE+g6kuYGSd+YyzSodEd8udpnyfSw6NdM40+ddRfuO3ntxKUmIS
         XUNJMBTJ2l6B4YYqB2JP89kcdaTL8uBU0iXTJxqVp3+Awl9WR1rAyK7eDuDLyA7k2Cii
         eZNA==
X-Forwarded-Encrypted: i=1; AFNElJ8ULhzJgQSDpF11ZWeFVC/fp5XdoaTc5w3Je+08W+KuRSlXeUzuilllixuN50r1jcBnXn1vMXq8cuo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQ9LHy5AbpySvUj72r2zSQcC3u46fZR6FCqQ/vl8x8oj6Yxunx
	DCc9bcYUFeUWikq/OR8miZMsZg8Rbssh/K7HoaDaxnumQJQey586nV7BKvbrKYTXGJfLHUCA7/x
	BAJqb7Tv2e96uzNUBSygMaZNlu6kTVkkhFXxkfCo52/27IHNvFWNKhg6fDYPZmeuG8uh+
X-Gm-Gg: Acq92OEa/7oMD0Re8Any92DgrrM41l3g5s4LmHNFVoIacKG4/DpgOkbLKrAV8oclbds
	fI1OKfWI95yIuHDUHUBwM5HA5q91h/YtpQWROKOsYP2o3vFAA8GDJEKQ4qWUkmhJ5UTfWlkocxa
	zkRGtIwn2aUz6mlP0zPYIWUITc9osDdhjoEBDxu2AgVsF2K3VtbSRmAxNXDGfg3sMBkpMXynqfo
	FUP4WY4MuyNrRaghc69SVBFWFu5dNXTEaw2M+z2m8YJg3eJION5jEgCTq2ciT2JOGa/2GAremGQ
	YeT2XKixILiD83mAgskaUmoxbcYqf08DhN5BSkIFin7AOnJYzGwote4kYvqC3hA1DXl/q9Vv/R7
	juOI/mcFwZk8ks/FemfAhLpVixPHbVciIclmKN2e/OFqqjizkWC5rT0CPlfznaQ5d2aVz5gQzu9
	hL9cc=
X-Received: by 2002:a05:693c:8848:b0:304:59cc:aee8 with SMTP id 5a478bee46e88-30459ccb57emr7594266eec.18.1779974144402;
        Thu, 28 May 2026 06:15:44 -0700 (PDT)
X-Received: by 2002:a05:693c:8848:b0:304:59cc:aee8 with SMTP id 5a478bee46e88-30459ccb57emr7594241eec.18.1779974143736;
        Thu, 28 May 2026 06:15:43 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3045245fbeesm15786645eec.30.2026.05.28.06.15.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 06:15:43 -0700 (PDT)
Date: Thu, 28 May 2026 06:15:41 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 5/9] phy: qcom: qmp-pcie: Refactor pipe clk
 register and parse_dt helpers
Message-ID: <ahg//RDP2dtleqBv@hu-qianyu-lv.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-5-269cd73cc5d1@oss.qualcomm.com>
 <ipzncrxi3x45fc6tz5xb7frxt62zmg4gwr25xmvzghlbt5miio@7eavln3cydfa>
 <fkcidw46hdsrrufxhhkk66mmitxnswmghpypyvtmax3x6vmnlp@2er6xgymxdf2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fkcidw46hdsrrufxhhkk66mmitxnswmghpypyvtmax3x6vmnlp@2er6xgymxdf2>
X-Proofpoint-GUID: WDdQcNXiiVMyva-o2VxSGgDyunm5IYzp
X-Proofpoint-ORIG-GUID: WDdQcNXiiVMyva-o2VxSGgDyunm5IYzp
X-Authority-Analysis: v=2.4 cv=CaE4Irrl c=1 sm=1 tr=0 ts=6a184001 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=HkNMFyVr_tcJnp_woqUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI4MDEzNCBTYWx0ZWRfX8GiFuDGJPrZ9
 oSuyC+8fD2382QTg2Rm7jYC3v3fulW2J8mFO4+lyTX/2NspynxdykWDTOxFGcR+y2/6EmfnRELZ
 bFJdE9yJzyaWR0clZjqdXsNPYgJG63kV2hNFuvh8qYtJ50IgzoHczvF1GwjRFI18sV0XYJbxgc4
 a1VUErMTAIPAe3b3fHSMEOg5yzvm4S8IYmJXSZVEwfSPn1396lqPbOYOk/mywIJtZKwK3RcTGti
 cc8o6hG8RViIkoIARC6laXmcCLK7xGnyWnhBT4ISFvmLK+F94VpclWO/wrkGlLIFepc8Max7wzK
 tZCOyB6tVdVLDG7yxuSpiJMBWvkYkICPBCejcco9pmQ1+ktUT6OWtRnejzpGfItopfGi64TfOiE
 a/ym9zXR1TEORD09rnKhCUZIh4yFyIpxfkzd9A3nEQHlD94x30cVrSxjJo8/+REZAUes1Z6TZUx
 Z+HACG3WuFlSu8mbmbg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-28_03,2026-05-28_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2605280134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_061546_995832_2D2E220C 
X-CRM114-Status: GOOD (  26.21  )
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

T24gRnJpLCBNYXkgMjIsIDIwMjYgYXQgMDQ6Mjc6MzVQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFdlZCwgTWF5IDIwLCAyMDI2IGF0IDA3OjI1OjAxUE0gKzAzMDAs
IERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiBPbiBNb24sIE1heSAxOCwgMjAyNiBhdCAxMDo0
NzoxNlBNIC0wNzAwLCBRaWFuZyBZdSB3cm90ZToKPiA+ID4gU29tZSBRTVAgUENJZSBQSFkgaGFy
ZHdhcmUgYmxvY2tzIGNhbiBiZSBzcGxpdCBpbnRvIG11bHRpcGxlIHN1Yi1QSFlzCj4gPiA+IHVu
ZGVyIGEgc2luZ2xlIERUIG5vZGUsIGVhY2ggcmVxdWlyaW5nIGl0cyBvd24gcGlwZSBjbG9jayBy
ZWdpc3RyYXRpb24gYW5kCj4gPiA+IERUIHJlc291cmNlIG1hcHBpbmcuIFRoZSBjdXJyZW50IGhl
bHBlcnMgYXJlIHRpZ2h0bHkgY291cGxlZCB0byBhIHNpbmdsZQo+ID4gPiBxbXBfcGNpZSBpbnN0
YW5jZSwgd2hpY2ggcHJldmVudHMgcmV1c2UgYWNyb3NzIHN1Yi1QSFkgaW5zdGFuY2VzLgo+ID4g
PiAKPiA+ID4gUmVmYWN0b3IgX19waHlfcGlwZV9jbGtfcmVnaXN0ZXIoKSBhcyBhIGdlbmVyaWMg
aGVscGVyIGFuZCByZWR1Y2UKPiA+ID4gcGh5X3BpcGVfY2xrX3JlZ2lzdGVyKCkgdG8gYSB0aGlu
IHdyYXBwZXIgYXJvdW5kIGl0LiBTaW1pbGFybHksIGV4dHJhY3QKPiA+ID4gcW1wX3BjaWVfcGFy
c2VfZHRfY29tbW9uKCkgZnJvbSBxbXBfcGNpZV9wYXJzZV9kdCgpIHRvIGhvbGQgdGhlIHJlZ2lz
dGVyLQo+ID4gPiBtYXBwaW5nIGFuZCBwaXBlLWNsb2NrIHNldHVwIHRoYXQgd2lsbCBiZSBzaGFy
ZWQgYmV0d2VlbiBzdWItUEhZIGluc3RhbmNlcywKPiA+ID4gd2l0aCBwaXBlIGNsb2NrIG5hbWVz
IHBhcmFtZXRlcmlzZWQgcGVyIGluc3RhbmNlLgo+ID4gPiAKPiA+ID4gVGhpcyBpcyBhIHByZXBh
cmF0b3J5IHN0ZXAgYmVmb3JlIGFkZGluZyBtdWx0aS1QSFkgc3VwcG9ydC4gTm8gZnVuY3Rpb25h
bAo+ID4gPiBjaGFuZ2UgZm9yIGV4aXN0aW5nIHBsYXRmb3Jtcy4KPiA+ID4gCj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IFFpYW5nIFl1IDxxaWFuZy55dUBvc3MucXVhbGNvbW0uY29tPgo+ID4gPiAtLS0K
PiA+ID4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMgfCA3NiArKysr
KysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQ0IGlu
c2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBJJ2Qgc3VnZ2VzdCBzcGxpdHRp
bmcgdGhlIEdseW11ciBQSFkgdG8gYSBzZXBhcmF0ZSBkcml2ZXIuIE90aGVyd2lzZSB3ZQo+ID4g
ZW5kIHVwIGhhdmluZyB0b28gbWFueSBzaW5nbGUtcGxhdGZvcm0sIHNpbmdsZS1kZXZpY2Ugc3Bl
Y2lmaWNzIHdoaWNoCj4gPiBkb24ndCBhcHBseSB0byBvdGhlciBwbGF0Zm9ybXMuCj4gPiAKPiAK
PiBJIGRvbid0IHRoaW5rIHRoYXQncyByZWFsbHkgbmVlZGVkLiBUaGlzIHNoYXJlZCBQSFkgY29u
Y2VwdCBpcyBnb2luZyB0byBiZQo+IGFwcGxpY2FibGUgdG8gdXBjb21pbmcgU29DcyBhcyB3ZWxs
LiBBbmQgbW9yZW92ZXIsIHRoZSBzcGxpdCB3b24ndCBiZSBjbGVhbgo+IGVpdGhlci4gV2Ugc3Rp
bGwgbmVlZCB0byByZXVzZSBhIGxvdCBvZiBjb21tb24gbG9naWMgaW4gdGhlICdwaHktcWNvbS1x
bXAtcGNpZScKPiBkcml2ZXIgYW5kIG1heSBvbmx5IGVuZCB1cCBrZWVwaW5nIHZlcnkgbWluaW1h
bCBjb2RlIGluCj4gJ3BoeS1xY29tLXFtcC1wY2llLWdseW11cicuCj4gCj4gSWYgeW91IGFyZSBj
b25jZXJuZWQgYWJvdXQgdGhlIGZpbGUgc2l6ZSBvZiAncGh5LXFjb20tcW1wLXBjaWUnLCB0aGVu
IHdlIHNob3VsZAo+IG1vdmUgdGhlIFNvQyBzcGVjaWZpYyAnY2ZnJyBzdHJ1Y3RzIGludG8gYSBz
ZXBhcmF0ZSBmaWxlIGFzIHRoYXQncyB3aGF0Cj4gb2NjdXB5aW5nIG1ham9yaXR5IG9mIHRoZSBz
cGFjZS4KPgpDYW4gSSBtb3ZlIHRoZSBTb0Mgc3BlY2lmaWMgJ2NmZycgc3RydWN0cyBvdXQgb2Yg
cGh5LXFjb20tcW1wLXBjaWUuYyBpbgpuZXh0IHZlcnNpb24/CgotIFFpYW5nIFl1Cj4gLSBNYW5p
Cj4gCj4gLS0gCj4g4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+Cu
teCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
