Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78578CCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 09:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1mARAoSENo6D3xyFmA3CMKXCg16KdXSUnI+vRvKbMs=; b=Ae5wA7fDhfOOxa
	Uboxc+n3odDa68HjOa2iGuFM0e51mVVUKeiAsA3uy0enWfGtwE8mPVO9mCqiGfNT3Mgw9jWy6ByYu
	m8SKiJD8tf6WrZrLFSTBTg1b34tsEJWO99VXy0GGo7ESg1TEBx39ql7/mIqxQPRDD9BhspW4OUHZD
	YfiQyx0t0El8yrJx+S9reC6XQfhWnIhtsRGfcO3PuQ1vPqD+LHG3kAvrDSQATXvLBB7XRYWsQexvV
	MZlUNzrvntZHNm/c/a4FSCpiyBLmGyW9iFfjJMVhSeA7/SPwrQdcoUjKcxxxCzh4VDskBkhrYPAFE
	QUr7ZN/O46aAz9/xchyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHeBW-00000002TFK-0fNw;
	Fri, 16 Oct 2026 09:25:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHeBT-00000002TEj-20wp
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 09:25:04 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69G8lWAc2815472
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 09:25:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FKP0tJkam5kj2GJAsnG13d60zYJ4DWwGMGMYlZXLSHw=; b=SnQoSHINw964US21
	OVW2Sy0HL7V50xhigmfopOh401MJBi1vKG3DCffiZ2LD7R6Db35S2kQXo1otQp2o
	9hB5f2WYeY3BxSMEa5TwHY9up79W832vaVyccyROngTWNmrY1XPQkPjSXkXtgcKW
	2+J6nrO0D5uMZocIeA3lKLkW/GPnf17PAZZQMsF4MfTzPsJ8RMeSsZZWmFeO0a7o
	ETjN/PfavaWb6MRs1hurHRgoowXZ1ACZuvbghDvWx4fUjl6+Sui+z4y4xzowuyRy
	oxNqBrZtb9VYRS9NiwtBbhNeiqIyQ7SsYRLLhWzTkJFHFcqqz67rt190vxbfBPzs
	t+QmAA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hb8r11vuk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 09:25:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93e49a1d3b1so1377685785a.2
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 02:25:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792142702; cv=none;
        d=google.com; s=arc-20260327;
        b=Mz18BdPMcsYcZXdI28AoJ2WFifw73TqpwSleIeORRaHSEySpKOY/1T1M5l18aUJIQR
         GDc3W12x1waM1b8cl7Kpw/Ejza1DZryUUqYhEe4y6rF3UqUzMd8tYOo9PJdqofPfkbND
         TZlZBYrXh/rgkVF1u3ZJxPeG7AvAJmL0qWZftfezI471zkvtu95Nc5dSSEVIKyEL62VD
         xIfQs51xvjisf3nxAhZTnoWPZ/g18TAALySgBQcZIMyQxlXE9rBVVBPgsWqHCoje02MD
         oWSOZ56tEJT9zgn+LDSLipDW1UhPH1LQuA2RO3ur0/F9lv824FnRb5FCP0d5w4gK4YIJ
         th2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FKP0tJkam5kj2GJAsnG13d60zYJ4DWwGMGMYlZXLSHw=;
        fh=clv0cN3iPJ9IhSG0hV8mUgkepNi5wdqXw4YO/kHu8e8=;
        b=psmI3d/dDUthFu/i1aJxUF/p6Gik5Cry62OjzcHy5I1oiMd+PHev/bVgmy2+3Yj4c8
         tK/kwJ1arKZy1UpyxIDoldNyvRAooduh2DKtHc1Rcj9Vul+/BNUFyNKR6e4ye8MbtT11
         nPPPgnR9+RknoYniqiAM6sYQ9e2Xcneu7K4BkrqGtcBUIy3bHesHXBTqpccQEQ6bIkfP
         bvDIQ3mI1XKfdiDF1jsdxlPqgvYdpZwCZc0bomGGvy3SD/8AbP+iuSXwddGt5VfjCnuP
         C2C1WVHZ4LW/OE4hdSXoTKjg9LMbVWRBv4B1aLw4hGyQLO0neN9UxTw1MwE4wgo2/09t
         PAqw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792142702; x=1792747502; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FKP0tJkam5kj2GJAsnG13d60zYJ4DWwGMGMYlZXLSHw=;
        b=QaA+FI7DRGMlt3U0/k4sBFt8ldP1cvJYbwiK1aIhyIOaUY6VrGM+gAKaB3XIlSFMYT
         CEnnBdjhb9QZJqwtTHOL79zbl0qpUt8W2RuoTKYh+2HLVkNDiJt3qvE6R/Ng4W+4wWH1
         7pIgIROELmqUY2bLnjH1Mq7S1z8PEZ8UBZSllzUNRv8d9uLgUAFxJn+lrwCHsQOOO+J2
         jYJItp6ADByHO4apWR5Ee3g1d0/ORntbyomX+nZH7x8JkDHS/dcXkEa0jG+a6VfrRU2b
         VgJtbV7h6iHucbmcWCwLxYjzH2IFrsqjNsldWPSybRsuTV3BMOJ2MLzIwipfohezuKpU
         QYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792142702; x=1792747502;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FKP0tJkam5kj2GJAsnG13d60zYJ4DWwGMGMYlZXLSHw=;
        b=SLNWcKDTurGE8pu1r5WatfOMKDc4KIaSFpXXQVdg1o5luvdsNY7VDPjw/0/vg/kYOb
         UDPmqFcKqilOenPQOgzFGPw9GvEvIumgtkWKQTtf2odSvpImDMWqWN3TH1oqezZRvQW/
         yWgq+T3+3YhXS/o/fIX5o6fVo89gcZF2siumzZLJAI+BFpa8BILP6tZL1XTI83T0zPBr
         6cnyCK1L4RocKIWatXKZm5wLBATGzmg8vSDQTEjc2ys6/Ag5bb/9X1/3xfNLFdRqijDA
         tF3cn9vx+AyS9genOx8WAf4lS2Nt9Azu2iGtry3vFGUNJUJPOpKugVpN1Gmk78HcsdUQ
         /wnw==
X-Forwarded-Encrypted: i=1; AKwUvBzsxCIpXIkNEZAuDQqJ617zUg644fLrHoGFUWLpFfIs5QuYeB50/aHGm/16bhZFF5gfSgKUc5hzG9g=@lists.infradead.org
X-Gm-Message-State: AFq9FYKlkF/s51tL9fO2bz8Lqs/aTL8OPHakIhxJmJ2IKyPoS2g635C9
	2UcTcLE0Yc0RgTZ3lzj535xUQS5rkaufilCC4ChKE3gGM89uuWp+YvINFuEa+b+HmXhXvpV1j96
	qx5DB5pFvXHv3Hoy4SZnmnGrGwbZqPlskPDRkPbnVXU/tPoOONiV0lMHtfWPOA9anppR6RQt0a/
	Ss1+6wah6IYhBFe6XZs95A1XI0iVwVrMFbVA+1gRent6A=
X-Gm-Gg: AYBFou000tbDLhOp58lmCensKRmuFNq5JgXBntcPOkvSgmJc+tP2v+WjocoyJLaPP3X
	YyJSNRZe2006j6x5oL6VEtbVDRZQm+vGE1LqeHRecr9dXT3A/NmFPfcXOh2Auiy+zhpQyL6/CGH
	az8HXRujfLQ8YQWP0yyjYDxLR2yz5S+1kkk04z0DS8jIDKJ4e6zcw/FPEheZO25N2evy5mV9RfX
	Bql7/aXu0DXC5qngCiSugHzNHOB/yX3BgSvh3y1MkAh3s1sYymCREG7rHm/RWWaNB8bZOF5M1ti
X-Received: by 2002:a05:620a:27cb:b0:93e:dcb4:c73e with SMTP id af79cd13be357-93edcb4cd6emr2647968085a.5.1792142701888;
        Fri, 16 Oct 2026 02:25:01 -0700 (PDT)
X-Received: by 2002:a05:620a:27cb:b0:93e:dcb4:c73e with SMTP id
 af79cd13be357-93edcb4cd6emr2647964685a.5.1792142701369; Fri, 16 Oct 2026
 02:25:01 -0700 (PDT)
MIME-Version: 1.0
References: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com> <20261015-x1e-cphy-rfc-v1-1-1f3fa9af940a@gmail.com>
In-Reply-To: <20261015-x1e-cphy-rfc-v1-1-1f3fa9af940a@gmail.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 11:24:49 +0200
X-Gm-Features: AclHuK8qYB9tixXQ7z206A9ZSBusHJPBuW_pxlm9dxF7pbKhpd-u_hOovixXQ8E
Message-ID: <CAFEp6-3N1gBZzQ7peHZ5gPt58dv_Xb4SVwoacQuij_Of1ObE+w@mail.gmail.com>
Subject: Re: [PATCH RFC 1/4] phy: Add MIPI C-PHY mode and configuration options
To: geocausa@gmail.com
Cc: "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Proofpoint-ORIG-GUID: vUP8QBbtwL6ElvAnlelVnPlhoyuFoU1N
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDAzNyBTYWx0ZWRfX6+E39sYgge3E
 CMf11vlm20tcGAQidJO4xdAxLQjFNQ8GFkoE9uHUFMd+r2sJGAZEF28TYQPb+SZYRaL8FT0scYa
 ST+MSWafNo31E8qZDYz9TiYWgChvCRk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDAzNyBTYWx0ZWRfXw5GvpnCz1WdX
 8D59x9/EewMyQuYd4o/yzqtG3P3M6QC7a8Cf/GJTK0Ecwb1uh3lGwdQsKjhp4KdGhp9WO22wxY2
 hBdrHZqwGExhBowQ7RShLkqca8BrCe6FWhuzM+sTTOD+niASAE0hFL3Yg6DM7e0e95LB4qIWTzf
 alPpyAcW44EwaLALz6PhZEhieZlOdgO9x3cfuRQB2vFl/ydlcnIlHK6+hAEGFTBnoTb03NBECw+
 bRab/oL2JTYVPy3AwgcrbssqU5FQJJ7SKgoKQcFzUX9KeAkbdDa1wRZP5n4lT4tMsPkrpCl7MGf
 ESBp+KCJqasaRZv+MNY3CPBaRATvHGeG3TYbgDV77QhNw1cB2tCdl/0pnrL/FzV+6Oa7A8eI8kr
 X4obOZ5fJbxcQH7Ue2iBqWf5fkOufMPjaDeZGKlulAK8ZUHJj3PfkaSWbmJe16/ah/OGWnNM9AJ
 omlILtpheufjmeu4s6w==
X-Proofpoint-GUID: vUP8QBbtwL6ElvAnlelVnPlhoyuFoU1N
X-Authority-Analysis: v=2.4 cv=L/CI0OT8 c=1 sm=1 tr=0 ts=6ad1ed6e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=veGBgP7MCKqIqI38Ms8A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-14_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_022503_545747_D93CD711 
X-CRM114-Status: GOOD (  25.08  )
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

T24gRnJpLCBPY3QgMTYsIDIwMjYgYXQgMTI6MjDigK9BTSBHZW9yZ2UgTmVhY3N1IHZpYSBCNCBS
ZWxheQo8ZGV2bnVsbCtnZW9jYXVzYS5nbWFpbC5jb21Aa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBG
cm9tOiBHZW9yZ2UgTmVhY3N1IDxnZW9jYXVzYUBnbWFpbC5jb20+Cj4KPiBUaGUgZ2VuZXJpYyBQ
SFkgZnJhbWV3b3JrIGhhcyBhIG1vZGUgYW5kIGNvbmZpZ3VyYXRpb24gb3B0aW9ucyBmb3IgTUlQ
SQo+IEQtUEhZIGJ1dCBub25lIGZvciBDLVBIWSwgc28gYSBDU0ktMiByZWNlaXZlciBoYXMgbm8g
d2F5IHRvIGFzayBhIFBIWQo+IHRoYXQgZG9lcyBib3RoIGZvciBDLVBIWS4gQWRkIFBIWV9NT0RF
X01JUElfQ1BIWSBhbmQgc3RydWN0Cj4gcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfY3BoeS4gVGhl
IG9wdGlvbnMgYXJlIHRoZSB0d28gdmFsdWVzIGEgcmVjZWl2ZXIKPiBrbm93czogdGhlIHN5bWJv
bCByYXRlIG9uIGVhY2ggdHJpbyBhbmQgdGhlIG51bWJlciBvZiB0cmlvcy4KPgo+IFRoZSBmaXJz
dCB1c2VyIGlzIHRoZSBRdWFsY29tbSBDU0kyIFBIWSwgd2hvc2UgWDFFODAxMDAgaW5zdGFuY2Vz
IGNhcnJ5Cj4gdGhlIEMtUEhZIGZyb250IGNhbWVyYSBvZiB0aGUgU3VyZmFjZSBQcm8gMTEuCj4K
PiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS1vcHVzLTUtNQo+IFNpZ25lZC1vZmYtYnk6IEdl
b3JnZSBOZWFjc3UgPGdlb2NhdXNhQGdtYWlsLmNvbT4KPiAtLS0KPiAgaW5jbHVkZS9saW51eC9w
aHkvcGh5LW1pcGktY3BoeS5oIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGlu
Y2x1ZGUvbGludXgvcGh5L3BoeS5oICAgICAgICAgICB8ICA1ICsrKysrCj4gIDIgZmlsZXMgY2hh
bmdlZCwgMzIgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcGh5
L3BoeS1taXBpLWNwaHkuaCBiL2luY2x1ZGUvbGludXgvcGh5L3BoeS1taXBpLWNwaHkuaAo+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwLi5lM2YwYTgyNTcKPiAtLS0gL2Rl
di9udWxsCj4gKysrIGIvaW5jbHVkZS9saW51eC9waHkvcGh5LW1pcGktY3BoeS5oCj4gQEAgLTAs
MCArMSwyNyBAQAo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCAqLwo+ICsj
aWZuZGVmIF9fUEhZX01JUElfQ1BIWV9IXwo+ICsjZGVmaW5lIF9fUEhZX01JUElfQ1BIWV9IXwo+
ICsKPiArLyoqCj4gKyAqIHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9jcGh5IC0gTUlQ
SSBDLVBIWSBjb25maWd1cmF0aW9uIHNldAo+ICsgKgo+ICsgKiBUaGlzIHN0cnVjdHVyZSBpcyB1
c2VkIHRvIHJlcHJlc2VudCB0aGUgY29uZmlndXJhdGlvbiBzdGF0ZSBvZiBhCj4gKyAqIE1JUEkg
Qy1QSFkgcGh5Lgo+ICsgKi8KPiArc3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19taXBpX2NwaHkg
ewo+ICsgICAgICAgLyoqCj4gKyAgICAgICAgKiBAc3ltYm9sX3JhdGU6Cj4gKyAgICAgICAgKgo+
ICsgICAgICAgICogU3ltYm9sIHJhdGUgb24gZWFjaCB0cmlvLCBpbiBzeW1ib2xzIHBlciBzZWNv
bmQuCj4gKyAgICAgICAgKi8KPiArICAgICAgIHVuc2lnbmVkIGxvbmcgICAgICAgICAgIHN5bWJv
bF9yYXRlOwo+ICsKPiArICAgICAgIC8qKgo+ICsgICAgICAgICogQGxhbmVzOgo+ICsgICAgICAg
ICoKPiArICAgICAgICAqIE51bWJlciBvZiBhY3RpdmUgdHJpb3MuCj4gKyAgICAgICAgKi8KPiAr
ICAgICAgIHVuc2lnbmVkIGNoYXIgICAgICAgICAgIGxhbmVzOwoKU28sIHdvdWxkbid0ICd0cmlv
cycgYmUgYSBtb3JlIGFjY3VyYXRlIGFuZCBzcGVjaWZpYyBuYW1lIGZvciB0aGlzIHZhcmlhYmxl
PwoKPiArCj4gKyNlbmRpZiAvKiBfX1BIWV9NSVBJX0NQSFlfSF8gKi8KPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9waHkvcGh5LmggYi9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaAo+IGluZGV4
IGM0ODBkNmNiNC4uZjEyMzM3ODM0IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvcGh5L3Bo
eS5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9waHkvcGh5LmgKPiBAQCAtMTksNiArMTksNyBAQAo+
ICAjaW5jbHVkZSA8bGludXgvcGh5L3BoeS1kcC5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGh5L3Bo
eS1oZG1pLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9waHkvcGh5LWx2ZHMuaD4KPiArI2luY2x1ZGUg
PGxpbnV4L3BoeS9waHktbWlwaS1jcGh5Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9waHkvcGh5LW1p
cGktZHBoeS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGh5L3BoeS10aHVuZGVyYm9sdC5oPgo+Cj4g
QEAgLTQyLDYgKzQzLDcgQEAgZW51bSBwaHlfbW9kZSB7Cj4gICAgICAgICBQSFlfTU9ERV9QQ0lF
LAo+ICAgICAgICAgUEhZX01PREVfRVRIRVJORVQsCj4gICAgICAgICBQSFlfTU9ERV9NSVBJX0RQ
SFksCj4gKyAgICAgICBQSFlfTU9ERV9NSVBJX0NQSFksCj4gICAgICAgICBQSFlfTU9ERV9TQVRB
LAo+ICAgICAgICAgUEhZX01PREVfTFZEUywKPiAgICAgICAgIFBIWV9NT0RFX0RQLAo+IEBAIC02
OSw2ICs3MSw4IEBAIHVuaW9uIHBoeV9ub3RpZnkgewo+ICAgKgo+ICAgKiBAbWlwaV9kcGh5OiBD
b25maWd1cmF0aW9uIHNldCBhcHBsaWNhYmxlIGZvciBwaHlzIHN1cHBvcnRpbmcKPiAgICogICAg
ICAgICAgICAgdGhlIE1JUElfRFBIWSBwaHkgbW9kZS4KPiArICogQG1pcGlfY3BoeTogQ29uZmln
dXJhdGlvbiBzZXQgYXBwbGljYWJsZSBmb3IgcGh5cyBzdXBwb3J0aW5nCj4gKyAqICAgICAgICAg
ICAgIHRoZSBNSVBJX0NQSFkgcGh5IG1vZGUuCj4gICAqIEBkcDogICAgICAgICAgICAgICAgQ29u
ZmlndXJhdGlvbiBzZXQgYXBwbGljYWJsZSBmb3IgcGh5cyBzdXBwb3J0aW5nCj4gICAqICAgICAg
ICAgICAgIHRoZSBEaXNwbGF5UG9ydCBwcm90b2NvbC4KPiAgICogQGx2ZHM6ICAgICAgQ29uZmln
dXJhdGlvbiBzZXQgYXBwbGljYWJsZSBmb3IgcGh5cyBzdXBwb3J0aW5nCj4gQEAgLTc4LDYgKzgy
LDcgQEAgdW5pb24gcGh5X25vdGlmeSB7Cj4gICAqLwo+ICB1bmlvbiBwaHlfY29uZmlndXJlX29w
dHMgewo+ICAgICAgICAgc3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkgICAgIG1p
cGlfZHBoeTsKPiArICAgICAgIHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9jcGh5ICAg
ICBtaXBpX2NwaHk7Cj4gICAgICAgICBzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX2RwICAgICAg
ICAgICAgZHA7Cj4gICAgICAgICBzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX2x2ZHMgICAgICAg
ICAgbHZkczsKPiAgICAgICAgIHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfaGRtaSAgICAgICAg
ICBoZG1pOwo+Cj4gLS0KPiAyLjUzLjAKPgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
