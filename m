Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F27F8CD98CC
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsRoEyfqx6nhsSMM6InjdwpMysvlcfcNyrGv69xVKAM=; b=BcTNqwW2VD3A32
	oaO2oTRGbkMHu0kKMumXCUbB31AtWhvR5yDJTaaIHM1oI1H5U+pV/npBg/kuhdpRpDRu/CzdhOGZv
	8O1JhTGChaYhEC/7udBR5RRCj/Yy02jL9/CKL8FM3Z2At/RYSckoakwxE6FAlpZelMu08+fPNXGu4
	sQThMeriZF0rhmm14XS4D9rXpEY+8/13EClbCkYwjp40+647OAOaoOlpbqq5+DzXYuUbX61fdW9kM
	UOQJBB1MKGKRBUqn8VbNqUsPP8cl8s0K6bchbP5IGUNzEZQJWGH5p599ui2EjCcfKkvj0nSyDoD3j
	R4JYVDSK6x1vhiWvtasw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcpF-00000009F1j-1T7z;
	Thu, 11 Jun 2026 10:39:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcpC-00000009F1N-2gsk
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:39:51 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65B9x6gp267538
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 10:39:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dmGt7JFBXRq8q3sZZr+m6Uul68lrJESQFFfzp79mWes=; b=SJSXMf5XkipBxAHX
	E5lCsW29gKqHeMun8+gAKY2hqBTkVizRlhKeCHUuReKhfQ64nvZjv5rxFq14rDBZ
	dY+CptxUClJ9QgfIz00lGISx4rLpjVhOxQtN+tLcl518xTbGvnp0zrFRgAoj0TQU
	qpEWTB8R6g1YdnXyjNStgEpsVTsT07gjhuEbtqsH39R1oVpZj/YoGWyPx46ioW7v
	e4gX7CJQhbJzkNwXY+iFQNqkiMtI2qEB8375otms4z9zDd+PbvQSNIPYxR/NJI//
	ySA/eE/XfVeTZdC1DOuG4d6K1NiMNhj5A1NSFNr7pzFEI3+3wXIqqPJ6lmD7/i9+
	ah1s0Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eqe6u2yw6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 10:39:49 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-517741bcc53so21111391cf.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 03:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781174389; x=1781779189; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dmGt7JFBXRq8q3sZZr+m6Uul68lrJESQFFfzp79mWes=;
        b=QTXI3r+N1bg4azs5dBKy6jfspjso7JF2ScCfHNEDN6AiHqYLePuPLu/anV1uPnQBq5
         shppVqLOnQfUeyUbPjDpYF0C9OLld3zqWfGNu9DQAYRogFVu52k8Rk+GLIT2qf/uuixD
         EULzTKesTOzLR+LjgaVkr5B1hi1fRsb/pa7Q10ZdECo519POUgKHwOuf20028smcsRHd
         wGUlIaRaH9LM2X8U3ju/p+i7+MGsMefl/6LVPZDBtceLp1oIqenxvF5HQQqGJ8OKtnyz
         Er+a7FRdrZqYdupkHBsPSR9Qx4Uk62erEDwqUCOCWbQm8NpnrZI8FcncpbjEIXFrFem2
         QGtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781174389; x=1781779189;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dmGt7JFBXRq8q3sZZr+m6Uul68lrJESQFFfzp79mWes=;
        b=pYMsV7Kd+HTT0HzUPuNcCbmknd22WMGDe765dQsQFRUtSpZzDuydTAYQNefU18y9NZ
         t+19FfRet0HWi2vT4hOQjtuxBWf8LbbuY7xb8nfDL7tvxWDF0r34q9GwRuZ1WkTPX+Eq
         8UgtC4usQb/tMuBIu1KuosIBL1JfVngtWNupraiBUW/BSiCYKdpiJ+wV+IFGSvjBWBb9
         effZRpYM4rYU5njkArk/MkAmmXsoyDmPR6+XSZBnfAzcSxMpqMdfS0miBHZi8KBptRuZ
         56LJm2f6Y3IALYlaP2jBxAYC0RDLWMtWWXc9SToYvXX2gpy/4zMjL/GGrVVvcEKQhdBl
         BR7g==
X-Gm-Message-State: AOJu0YzRD02goM+XIZ9WKAO5vAIeg4+7BuFdyuf0KFMBEk0jUrnyKBbk
	peaeg0IqPoaiY4XoiX3f/5UZ2M7I4wHL0xtC2Q6m2/BOs3VA4OXneo4F+z7Yv1TV29vpSWHxoMh
	2n4uLY/FodTo5LyEsLlkx29/7vV9l6EoHus/jzWw/5CIQvrzqxD1823Ipv6mr4Jgyz0kw
X-Gm-Gg: Acq92OFOSt/Z4Xp1wukMsx7miu7UnfuUBc+dPH4fDrsQJrWxOqwIU2vQwM+4O0KsMdx
	zhNqLD/61atJ2uu0UKcdtVf2zdL6H+P9MjUSgP6YNVu9AD+RkfVsA7lAysYrbhQQqO/28TnO5Cc
	tvPv1bFlqaGeWewap/f9zjpqmmdg4jZ1bu80mbxz5BpehlilyfPBjvI/4hUuW5ysWH3er67+S8x
	h1gA45z0rqAmI2ptyjmlJJwHh3hF6+63tivEpIMeZXP5rED7q/OCCMuzrhCZVpq2tOHrgq+p7D0
	fYdnWpMwRSLd/ZRF4FXtuPGmwBGfkqVB4EV6Tdc8KidIwARjNniUf19GsvVfsGpjNFonl9et/ct
	skJ4pm4LzEMtLGlT9egIxOpPirS8793sx7EI1ZlKea0rTisc1gAzBsHMU
X-Received: by 2002:a05:622a:a06:b0:50f:b9a6:82ae with SMTP id d75a77b69052e-517edcda9bamr20986831cf.2.1781174388899;
        Thu, 11 Jun 2026 03:39:48 -0700 (PDT)
X-Received: by 2002:a05:622a:a06:b0:50f:b9a6:82ae with SMTP id d75a77b69052e-517edcda9bamr20986591cf.2.1781174388555;
        Thu, 11 Jun 2026 03:39:48 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfcb1608a71sm48817066b.21.2026.06.11.03.39.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2026 03:39:47 -0700 (PDT)
Message-ID: <0f6ea4d2-3865-492e-ac6b-b008843f8d56@oss.qualcomm.com>
Date: Thu, 11 Jun 2026 12:39:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,usb-hs-phy: add
 qcom,vendor-init-seq
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        github.com@herrie.org, me@herrie.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
References: <20260603054809.565723-1-github.com@herrie.org>
 <20260603054809.565723-2-github.com@herrie.org>
 <ti5p3oreibkae4pl5sn52g3ctv3ufcs6aklwgbterksrxvxrbj@b6scawz2cqmq>
 <66905f4914dc022629158ac02df1c7df@herrie.org>
 <46lrfwoahgzoudq3afnhv4kxqs4fwj3w7u2dnx6ns6soo6pxt2@qkqbelan2iwq>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <46lrfwoahgzoudq3afnhv4kxqs4fwj3w7u2dnx6ns6soo6pxt2@qkqbelan2iwq>
X-Proofpoint-GUID: cNd9KpnOAUq3tycGLqun5HVZkBe4QrLM
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDEwNyBTYWx0ZWRfXy/YLnWhX9jDq
 FC7hV1p5JJroeNFgiOW6gcbbOI9V92JRKbIh/Yb+x+RVDmX0ZaBzO0MjGl9Xp68tvTaf5wPs4P7
 OsXj2Iqku3OPY+fiznH6j2Fe98nrefs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDEwNyBTYWx0ZWRfX81yBdFZZzMW2
 2vmwaSS2gBF5pQgI5+m7GNBUDoQAroW4cAbbltrI6yBFZ4KXD4fCS24G5SU6GMfHoLxScump17A
 4An5f1qpWhQBAHe2JF544Yi5fvdqCqYcfD2NxH8eoukNU2S3tKilT9Ngwr5JL7I6avd9tvVltYF
 8t3a/fV4MEGn27UC+SnrvredvYxCIDoy79+opJnXUGe8C2Rj6uc9gvwO694MxzowxziH/h50LLf
 9T00LWk0zfrKsmDQJkSjhhjBkzL+BQWwHgmUdRDovRbb/kTAhPj6iQd+HIDi+p0H2pAGY4/UK49
 GPvmVM4WSOWEBUDckATGIUijsCzsLjh3JYJphDIIzOpuDPWCOUXlbf6/8cmOORgVSwneVEbGnYE
 rdTa0ifmowyYVsVDhnKu0SiNdl1JL25GkHeoGGUA7HAZjdvBu5kNPj0GIrovfk2PYF4hLX2Pf7R
 b2x13m7aeS78vYsY56w==
X-Authority-Analysis: v=2.4 cv=F5lnsKhN c=1 sm=1 tr=0 ts=6a2a9075 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=cTwmTnRGAAAA:8 a=vFWkIUYBD8dAITECdtoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=GUWCSGlMWfG-xDt5EnV5:22
X-Proofpoint-ORIG-GUID: cNd9KpnOAUq3tycGLqun5HVZkBe4QrLM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0
 suspectscore=0 impostorscore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606110107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_033950_685743_EA62640C 
X-CRM114-Status: GOOD (  16.66  )
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

T24gNi80LzI2IDE6MDIgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gV2VkLCBKdW4g
MDMsIDIwMjYgYXQgMDY6MDk6MThQTSArMDIwMCwgbWVAaGVycmllLm9yZyB3cm90ZToKPj4gT24g
MjAyNi0wNi0wMyAxNTo1NywgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4+IE9uIFdlZCwgSnVu
IDAzLCAyMDI2IGF0IDA3OjQ4OjA4QU0gKzAyMDAsIEhlcm1hbiB2YW4gSGF6ZW5kb25rIHdyb3Rl
Ogo+Pj4+IEFkZCBhbiBvcHRpb25hbCAicWNvbSx2ZW5kb3ItaW5pdC1zZXEiIHByb3BlcnR5IGNh
cnJ5aW5nIHJhdyBVTFBJCj4+Pj4gKGFkZHJlc3MsIHZhbHVlKSBwYWlycyB0aGF0IGFyZSB3cml0
dGVuIGFmdGVyIFBIWSByZXNldC4KPj4+Pgo+Pj4+IFVubGlrZSB0aGUgZXhpc3RpbmcgInFjb20s
aW5pdC1zZXEiIHByb3BlcnR5LCB0aGUgYWRkcmVzcyBmaWVsZCBpcwo+Pj4+IE5PVCBvZmZzZXQg
YnkgVUxQSV9FWFRfVkVORE9SX1NQRUNJRklDLCBzbyB0aGUgbmV3IHByb3BlcnR5IGNhbgo+Pj4+
IHJlYWNoIHRoZSBzdGFuZGFyZCBVTFBJIHZlbmRvciByZWdpc3RlciByYW5nZSAoMHgzMC0weDNm
KS4gTVNNOHg2MC0KPj4+PiBjbGFzcyBoYXJkd2FyZSBuZWVkcyB0aGlzIHJhbmdlIHRvIHByb2dy
YW1tZSBwcmUtZW1waGFzaXMsIEhTIGRyaXZlcgo+Pj4+IHNsb3BlIGFuZCBDRFIgYXV0by1yZXNl
dCBiaXRzIHRoZSBsZWdhY3kgbXNtX290ZyBkcml2ZXIgdXNlZCB0byBzZXQKPj4+PiB2aWEgcGxh
dGZvcm0gZGF0YS4KPj4+Cj4+PiBBcmUgdGhvc2UgcmVnaXN0ZXIgd3JpdGVzIHNwZWNpZmljIHRv
IHRoZSBkZXZpY2Ugb3IgdG8gdGhlIHdob2xlCj4+PiBwbGF0Zm9ybT8gSW4gdGhlIGxhdHRlciBj
YXNlIHBsZWFzZSBleHRlbmQgdGhlIGRyaXZlciB0byB3cml0ZSB0aGVtLgo+Pgo+PiBMb29raW5n
IGF0IGV2ZXJ5IE1TTTh4NjAgcmVmZXJlbmNlIGtlcm5lbCBJIGNvdWxkIGZpbmQgKFF1YWxjb21t
J3Mgb3duCj4+IG1zbTh4NjAgYm9hcmQsIEhQIFRvdWNoUGFkIC8gQVBRODA2MCwgYW5kIHNvbWUg
SFRDL1NhdW1zdW5nIE1TTTg2NjAKPj4gZGV2aWNlcyksIHRoZSB3cml0ZXMgc3BsaXQgaW50byB0
d28gZ3JvdXBzOgo+Pgo+PiBQbGF0Zm9ybS1sZXZlbCAoc2FtZSBhY3Jvc3MgYWxsIE1TTTh4NjAg
aGFyZHdhcmUpOgo+PiAgLSByZWcgMHgzNiBiaXRzIDErMjogQ0RSIGF1dG8tcmVzZXQgZGlzYWJs
ZWQsIFNFMSBnYXRpbmcgZGlzYWJsZWQKPj4gIC0gcmVnIDB4MzIgYml0cyBbNTo0XTogcHJlLWVt
cGhhc2lzIGF0IDIwJQo+Pgo+PiBCb2FyZC1zcGVjaWZpYzoKPj4gIC0gcmVnIDB4MzIgYml0cyBb
MzowXTogSFMgZHJpdmVyIHNsb3BlIOKAlCBIUCBUb3VjaFBhZCB1c2VzIDUsIEhUQwo+PiAgICBk
ZXZpY2VzIHVzZSAxLiBUaGlzIGNsZWFybHkgZGVwZW5kcyBvbiBib2FyZCBsYXlvdXQgKHRyYWNl
IGxlbmd0aCwKPj4gICAgY29ubmVjdG9yIGxvYWRpbmcsIGV0Yy4pLgo+Pgo+PiBTbyB0aGUgcGxh
dGZvcm0tbGV2ZWwgd3JpdGVzIHNob3VsZCBtb3ZlIHVuY29uZGl0aW9uYWxseSBpbnRvIHRoZSBk
cml2ZXIKPj4gYmVoaW5kIGEgbWF0Y2gtZGF0YSBmbGFnIGZvciB0aGUgTVNNOHg2MC1jbGFzcyBj
b21wYXRpYmxlLCBhbmQgb25seSB0aGUKPj4gSFMgZHJpdmVyIHNsb3BlIHZhbHVlIGJlbG9uZ3Mg
aW4gRFQuCj4gCj4gTG9va3MgbGlrZSBpdC4gUGxlYXNlIGhhcmRjb2RlIHRoZSB2YWx1ZSBmb3Ig
eW91ciBwbGF0Zm9ybSBpbiB0aGUgZHJpdmVyCj4gKHdpdGggdGhlIGNvbW1lbnQpLCBtZWFud2hp
bGUgd2UgY2FuIHRyeSBsb29raW5nIHVwIHRoZSBhY3R1YWwgdmFsdWVzLgoKRG8gd2UgaGF2ZSB0
aGUgdmFsdWVzIGZvciBhIE1UUC9RUkQgKG9yIHdoYXRldmVyIHRoZXkgdXNlZCB0byBiZSBjYWxs
ZWQKYmFjayB0aGVuLi4pLCBsaWtlIHdlIHdvdWxkIHVzdWFsbHkgcHV0IGluIHRoZXJlPwoKS29u
cmFkCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
