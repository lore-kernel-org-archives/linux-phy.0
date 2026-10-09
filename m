Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0392CA6012
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 08:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:From:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6xe0/GeLdOA2kSRJwTkPtWBJHMLUan+lrtHjfAgok80=; b=M0xHL8r5XXeo2Ml+snqfGFy2E8
	v1l3MdbxyRnj6ozbaxe3mXqB/1Vxape+cBP1tRSlSU5KdUSSjolt1GH69Tyz1867C1uW8X4sNEY+A
	00bf5m8hyekX6H+3DqN0rAB9NEvrlYrtIfuCEzn3Y6wrCv3LLGSmfRv1MFWWeivTyU0l+12jAAPtt
	X7VYeY2CL6wilaVbxm5GEzU8NU7D8tq5IdDT6KOrnZDWhDDsqjJK2R7rHX7KMc8iMgBIPUqcfAqf2
	LPqeBEuG7Os15wLsjMqUwrcT9+52PJel+ER98VYduBGaQHUEYVBJd5bvjXrGACZ/u5iVSPHM0CqXE
	kitAYX8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF6Eg-00000005qhA-2QWo;
	Fri, 09 Oct 2026 08:45:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF6Ed-00000005qf8-0HfC
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 08:45:48 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6998KJ9R404404
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 08:45:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mvRGWpHB0XMx2h6qPEzRJjxPlxemxdFmjLqq0RenMUg=; b=BpcetjdysSKzyQ1Q
	N65NXKdsDRcU3J346n7NV392I1xmA+ZfUF/Bq5zKnyV6Y3UGWlOXAHO4oTcWexNm
	JjMzfrUU4WJzr3FXdYahPYsfLQIc6FCqXlL+ihLUQgffGqo14Q9XGQgfdjZaCslr
	fIs6KUZoTmSQTDDCOPpjLBmrfxX+a58fkgctvzChxLzAMmiLj7zVVo7hZo7alrrJ
	EzWsAxDM8mVeHsERCTIqXJE3NtQo/Q16H/HIBFGfIu7t4epHU532QApzht/njoY7
	RuIoy5MWZwRKVKwXnW3YTFZgLolF/Zh8XkJi8TlDtuQS8j5GfM16cM5MIQSD7lA6
	EGw3HA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6fxk2rkn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 08:45:46 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-ccca9481fb6so4197754a12.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 01:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791535545; x=1792140345; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:references
         :subject:to:from:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=mvRGWpHB0XMx2h6qPEzRJjxPlxemxdFmjLqq0RenMUg=;
        b=Z6WXrA4NQQsGmGYSlH6k+5nDiDx/0gK2Jcrs4v3+hg1Ojblk1WqUFkCJ5j5znkiCBk
         g/kDLE05soK67L5CjTiTS2t9aHTRWfe0AH7v7Z1mCLAN7YnRAxi0nCFFWY8i7y8rCHZ/
         Nafjkct5kwv/MRxjh0REK8q6Q9i8xVt/2mfHVDQ70swqa8RZ3/9QYu34xeUmwbV9JOzW
         ul1Ri7Un66IvgLJDVEUdBXPJm2jQHPAfn2d1MjZOFnj706gj4HxPWdj9C5edTdghi7CV
         4Ls2QQeO0Zl0CdStFQ9nLNDGcjnSWPwl7ptSB/eScCiCJTTm9iv8lUCLuqtPBiAMaf74
         tueg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791535545; x=1792140345;
        h=content-transfer-encoding:content-type:in-reply-to:references
         :subject:to:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mvRGWpHB0XMx2h6qPEzRJjxPlxemxdFmjLqq0RenMUg=;
        b=GmK/8qRj9C83/wDqmzHxea4MWcrQIZGLnPUbXxGs0o5lEEggK/NfNZW1TzrakM6Eqb
         v/3DUKN8oeZdIz4IMtKR08upJsXOsqvrspHVJZ0GMbQE4Dfy5hDwmknxb9jvg+4QIGYm
         Sz6WWh6/VX3q0Ql0OBuAkqGjO+nD0ME9kAHt12Jbcygdx4APNI38viZjN2gDyf+bT/2M
         jINVVc23YqMWTP/S1n+B0JIg4l80amdsat2Loq1pDmukRaKzotRZPkro85BR4IsDT6Wb
         +UOJX55T7rkCdJlqLe0voLBzI6kEeytqiLKi35rif7RNn7EGRsDMzZMOuUmMFW1MAPLk
         oCQg==
X-Forwarded-Encrypted: i=1; AKwUvBymRVGn1Jii8Tbh5TIcXP+iPFZfix9nY2akY5VdUrvUD7WQbz3C8/YNRpV+BnA1D+OYsmHeo6qKCH4=@lists.infradead.org
X-Gm-Message-State: AFuF++ntnmW0d4DkGCiE9tcJ8bL7S5yKqb8XJL+JzOTEQvS9+Tz3NY0l
	v/AK/btWGwVcpUEVYCc39jPZM7AJlhn96g1EGrJOduI2ZJUd7t4HPMnicU4/g9Kcsm8eXFOrgVz
	2bhjqY3RjTENoRuYp9qTaSopMCaATmqSvSpNOa7dA0n2CTsctDqxnKE8f8dbSm9Nk8elb
X-Gm-Gg: AYBFou2ZGYYV2xYrxS32KRXMn8ItNsb10xdLYTSJqUv4iq//wBr2lZ/EIRM404Jd3/2
	vtuvi+F3dD4O09gaCPbNOGP1JcmryaZ6/i3ETTW1vegh0w/ypd1k7ete6n1tjiLVMB9kyaIq3nu
	GciWiCG67zw2t0JHiT6tEKLfVnAoye04oGKx8tfx90/Cx7WicHw+kioC921GyImNyW0C1aZaQch
	EP5xzXx1cvM68bIv2+u2QHh40HMaMIlNqPAeTYNyuS9KBGh5KWkFCKitGFL+WnCj/YiN2jTq+Iw
	5spEIowwUkwH900c7wwcZ0+9+3Lhj520IyAEODDopdz02xTmFnRDLaHvce1ECWdx/XrAfRqmTaf
	2KSEOrtX/wHAAhfpEtPRlxzX9C7M2ss7aFnA1NXTiVf0K2vlwlw6Wd+MlPdLsAEM=
X-Received: by 2002:a05:6a21:9190:b0:3dd:85a8:4c67 with SMTP id adf61e73a8af0-3e16be5fa00mr1023347637.46.1791535545442;
        Fri, 09 Oct 2026 01:45:45 -0700 (PDT)
X-Received: by 2002:a05:6a21:9190:b0:3dd:85a8:4c67 with SMTP id adf61e73a8af0-3e16be5fa00mr1023320637.46.1791535545012;
        Fri, 09 Oct 2026 01:45:45 -0700 (PDT)
Received: from [192.168.1.6] ([117.143.161.217])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cd3d9d492d7sm599567a12.4.2026.10.09.01.45.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2026 01:45:44 -0700 (PDT)
Message-ID: <78ef7040-0284-4199-8468-8d7cca7eb4c2@oss.qualcomm.com>
Date: Fri, 9 Oct 2026 16:45:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: hangxiang.ma@oss.qualcomm.com
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Subject: Re: [PATCH v19 10/12] arm64: dts: qcom: kaanapali: Add CAMSS and
 CSIPHY block definitions
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
 <20261008-kaanapali-camss-v19-10-b2c583ef50e0@oss.qualcomm.com>
 <82d48200-f13d-4b14-8cc4-4b1b2dd2bb37@linaro.org>
In-Reply-To: <82d48200-f13d-4b14-8cc4-4b1b2dd2bb37@linaro.org>
X-Authority-Analysis: v=2.4 cv=fKesTpae c=1 sm=1 tr=0 ts=6ac8a9ba cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=K/RrOd38U9TixX+j9hIN8g==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=N5TnpenYHa_lGfR9nhQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: YSMQeqNfAFcG3eAXl22x8t2xN2XRgMSx
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDAzNCBTYWx0ZWRfX72atBVmx5HIu
 BX1cAjT/FC1kh92EUO7Z+8x0X3TDfFcMuvnyf/fSFa+mzzXnFll0qnRm/D4xqBsX/9ExGbEDPDS
 IoUozGQGLCT8/eLkhNNTJwFF8U413K4=
X-Proofpoint-ORIG-GUID: YSMQeqNfAFcG3eAXl22x8t2xN2XRgMSx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDAzNCBTYWx0ZWRfX14Wm5C+Xb0hv
 PTaZaKilzrQzYFAALy8eQ9skXVVP1hNi3GzQNkjtD01u78aeNXBvDXIQbqeF4LI2Ozf+IrlUzom
 zCSWuPdfJQ6cRgzoj135CHX8f2yeIN2PNdu028lJ0YikDs+jJVecQxQUoDemZmNvEa8zTGQ8f8o
 2zjMAbGZV59xIjg6yidw3PBdInksQncMPLyvjmbsBglUHuEgx3vc4lajiU/LchwrIQKSMs8S27V
 B7kcUcDmwNccdKJxz/qx0zwn5bLwef2s9NqxmAuc7mVqMoGItWwOZ+vdTbBTSgMgNvUaYEdmL7n
 egM5BfUeyOgTBPZiABdqHmNR03WV1JwbPzNPOolzuZbfPT0az+fD4mbHnJv+bVTcgYySUN3Fsvd
 1j/bPQhBxZFew149hIxyOExHFmFPDKEg6c2GybB3Tuhi55sETs2vU8rg2ToPY6J1kyESIgimscj
 /CuSveTaJFZjxpezNdw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_03,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 clxscore=1015 suspectscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610090034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_014547_109870_D0CBD72E 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTAvOS8yNiA0OjQwIFBNLCBCcnlhbiBPJ0Rvbm9naHVlIDxicnlhbi5vZG9ub2dodWVAbGlu
YXJvLm9yZz4gd3JvdGU6Cj4gT24gMDgvMTAvMjAyNiAwODoxNCwgSGFuZ3hpYW5nIE1hIHdyb3Rl
Ogo+ID4gK8KgwqDCoMKgwqDCoMKgIGNzaXBoeTA6IHBoeUA5NTIzMDAwIHsKPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicWNvbSxrYWFuYXBhbGktY3NpMi1waHkiOwo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MCAweDA5NTIzMDAwIDB4MCAweDIw
MDA+Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZjYW1jYyBD
QU1fQ0NfQ1NJUEhZMF9DTEs+LAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDwmY2FtY2MgQ0FNX0NDX0NTSTBQSFlUSU1FUl9DTEs+LAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDwmY2FtY2MgQ0FNX0NDX0NPUkVfQUhCX0NMSz47Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJjb3JlIiwKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInRpbWVyIiwKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImFoYiI7Cj4gPiArCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNDc3IElSUV9UWVBFX0VER0VfUklT
SU5HPjsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9wZXJhdGluZy1wb2ludHMt
djIgPSA8JmNzaXBoeV9teGNfb3BwX3RhYmxlPjsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHBvd2VyLWRvbWFpbnMgPSA8JmNhbWNjIENBTV9DQ19USVRBTl9UT1BfR0RTQz4sCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZycG1ocGQgUlBNSFBE
X01NQ1g+LAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmcnBt
aHBkIFJQTUhQRF9NWEM+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG93ZXItZG9tYWlu
LW5hbWVzID0gInRvcCIsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICJtbWN4IiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgIm14IjsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiArwqDCoMKgwqDCoMKgwqAgfTsKPiAKPiBUaGVzZSBQ
SFlzIHNob3VsZCBoYXZlIHRoZWlyIHBvcnRzIGRlZmluZWQuCj4gCj4gLS0tCj4gYm9kCj4gCgpB
Y2suIFdpbGwgZm9sbG93IHRoZSBIYXdpL01haWxpIHRlbXBhbHRlIGluIG5leHQgcmV2aXNpb24u
CjxodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA5MjMtaGF3aS1tYWlsaS1jYW1zcy12
MS03LWNiYmI0MmU1MzRlZkBvc3MucXVhbGNvbW0uY29tLz4KCi0tLQpCZXN0IFJlZ2FyZHMsCkhh
bmd4aWFuZwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
