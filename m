Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50ED0606A31E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 12:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LEl6nKv2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=V5kd7NJz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=hPRni7Gd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pfMR/boNw1XguesWxEU4Byo0AdJdyOdhPBP5zPpmzvA=; b=LEl6nKv2ImLI086zrC+Z9uldTL
	S9HBRcQuAjlMp4NlcgeLpz7FHYfx52KU44xkylLtPmf76j9VK0ySn6V9P2pHRD9KaKCbT+vD8F7Oq
	gf5neCRAMFyWYz6CM8hqI7GkBKG22c4GJUVqTN3CUIw8tvnJ8fkDeGIrWhPsXNHod837GD3Q9Dd5V
	yIDIPDOh4X54V3beya/uKjcrXCSN99lbFznb8/HMXpUqxaVfS7vlf6hT9v0eanqVKnc8tRMOeEh0L
	eYGuUW0DSm/cinJxURB9X3oxTaWZJyDvv00NZ0gPedhX1ta9SK05PFfsx84gw6Nvke7w6JMDvgBdC
	JtrCqzWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWYYe-0000000D8yT-3o0m;
	Thu, 26 Nov 2026 12:26:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWYYb-0000000D8xI-0Wm2
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 12:26:35 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQBVZsY3177954
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 12:26:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FDf27xnjIY0MGgU9QPmFgOgG3Aq3X7unXOSGnQEZ3Zw=; b=V5kd7NJzOdG1BKDx
	I5/IfSAIdzSsX2fnwQfRC8Ib6pN0PhViZABr3i8j+TcXy2/+4RuObh7mTfOUhyBG
	lpUcGwqLuHO6d1ShDhOgyP3m1JOqUkcsIyKwckbHs5JsWkzmwIaoAuS5fukPfORQ
	w1QHpcgzG2F9OJzhtLyY0Fo6IYUyGolDMPM9ratJxnB/4aiLTx+vieyBzrm+iZl+
	Um8lBMbrSAUrJcXlqBT8dFm7EvfP13qLnlz5lJsmEFHC5xK25A53GmprtuxoziDA
	Ayopt8q9+tqRTSMPhN08ghhqxJ4nbGuYPxHLR1WxPoIA+gzzdxAq4iBhkiTgGX9r
	qJ1DPQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j662sb3ra-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 12:26:32 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cdb8b260bb4so3816586a12.2
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 04:26:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795695992; cv=none;
        d=google.com; s=arc-20260327;
        b=Hsj5BAiUPD608cJGA7BktHANuz1wHtjbnbUwVSH1e0MXM9E5AkJ8RPVj4yZY56dlm4
         M6QP2bXjESqJ/2GFDXsrqY5lzo+hHA9CVT7ySlcDPUBDHFDRnm0+0z6C+P4WJwoX7bJV
         Tv8oPsQVSlj3moAh7HJSlPKLe7exa7jfbfiUVs2GwQErMkZtDU3y9HwMEHt6PidnI2zn
         gJwEUeFgk9U6Dvg/thvBhXI4IhjvRuF5zSntYfwEJ/5plaM6SQ53WBsJV0iS6bkO+zKQ
         PRLZU6soQyLs9GtXHNM4uo7+qIcIiJYrYr+zP+WSTlNAdTV14KRaK0rAwe+zmlPxmSYd
         HMmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FDf27xnjIY0MGgU9QPmFgOgG3Aq3X7unXOSGnQEZ3Zw=;
        fh=Q0MKT7FZ1rKHHm8DHlj6lxXopdXIuJUBPJE1yJUz8Os=;
        b=VViPMnS8UfXz6wC8BrsaKFxpD8LbHuKZ73oZxkZd6FhKcnO4l+2TrDJMi/y2A3NZtG
         aBNDYBZ6a6TpePnUuyFsk4uXeUM9lNFD7jw6Xy/MRkaR3tGUJogmj9j1zFR4/xOpHMLR
         mDuO9EE1cGSA5S7VI1e208wRjMUBVEwEJ2H4A+bMpkTUa0FSM/lbMcizxR8YIKArFiiV
         JTh0ba/xmJLlyNUQpF29pDqYYxSKqsIr4BW3IqG5FeFAAquzHH4ewWlsbZa+463XTLRU
         KbZ2Bq/9zMnVn0awyctlF0ZpjWqq9pwKirZWvNcsniswLWxjQpvJnNpxERMfqHIn0htA
         pZsQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795695992; x=1796300792; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FDf27xnjIY0MGgU9QPmFgOgG3Aq3X7unXOSGnQEZ3Zw=;
        b=hPRni7Gdv3oCNENgb0u5gaV4Zw3RfTsSXMYdUW2LkhDwxo3ngLooNHpYEqv5NIryOw
         50gNiX0U2zp5PmBVRabSSO/z5d+YB390v0JpuUYuTAvHltYpFA6qWXLWPpEMlgoS5E5+
         doNVarEoTDmk69pZhfM+ucjNlLfLu1UgaFrECzz6tA3uznE7i2fjidXagOSwuaqE3PS1
         MJo8HeRo2V7UTx9lM/yM1VgspVJV23WVeJuYj0UCrHhA5bgwMms17jCdW9EwNVAkVXAW
         FN62v20xJ1nwrdCgn+PM6V1leV/9dQPoNOoD5k7YifSAnx0ROeIBdaoyBAV86OaD7CJm
         CvSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795695992; x=1796300792;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FDf27xnjIY0MGgU9QPmFgOgG3Aq3X7unXOSGnQEZ3Zw=;
        b=TrJ0enbUpZuPfgxNA4qxo+/7IspaEFvBV9hC9+msYFDZuaB/wtTbmydY1bFO8HqLq9
         dBkPx8Sf7M1RS2SaBxp5ezICWnE5lSInqfdPAz/w1cSuT5dSZdP13p5iBdviISPJLZmD
         9+K/OVMgHiOUw+6w44aaIWNX6sWyI0KANZLKnUVOXPxU+aNbk+dK4v2bD1zTbrRi4Gxv
         B/BTUgS//FGE/VpeKbzlAD82RxqlKsXtGtLMpyZA5zPmc2afVc+WBBlK4N/xiSY6b7dE
         kyCcNRIUiH3bdS7EiKDSvTVb80b/okfD3zw0l/L4ii01YTD2X3rErJZTlzd3QTKAiV3/
         7EHQ==
X-Forwarded-Encrypted: i=1; AL+hErG8h/9VUr2wmUGFs2wU3HIXt9M2nB+EZCFg0msHq90WY+vlDeKhnDvRqUc9lSEnyTmIarlFE+6nYZY=@lists.infradead.org
X-Gm-Message-State: APuU4Z+RNmceTUMg77rihm9xQlGtel9GavsO6jDgFl8vWgQOhW1T+gdW
	Szy5Thcg2VkSI8xrAlNw8yDIww2TYbAb1e2tpgRcRZQ6Hmz//sBlNOEPi/35I9Tu9QtqkQOTG5y
	I3s2fMP6dpHOPPDUxXd+LSNqFB6tyXPm8/gFSMSIkRkGCqaJyMF7NU6SQF2cF14s7SGqCPZPBTR
	kHwAY0SBXSShb/UQlVyoKijRZUnh3z4owP8OjJSdTZusg=
X-Gm-Gg: AZFdTZdmM21c7aBJzBC6d1QNhfasATnf42K56mQx3mero8S84L84foIe5ZnAawnZNId
	EBiGwuYmhKpyvWiK4m/Py36i1YUtUZBTSidxRYZIaz9fIHpKapqWNP9SPBZA7McZabaNkaYKv4Z
	jSGvPhzydVXne535DtTySwtISnhxFYfNm2bTGHGDCfRydc6J2CBQHsQ9W+rA==
X-Received: by 2002:a17:90b:2d8a:b0:3a4:6f38:f2a2 with SMTP id 98e67ed59e1d1-3b41c92ce58mr20258224a91.25.1795695991792;
        Thu, 26 Nov 2026 04:26:31 -0800 (PST)
X-Received: by 2002:a17:90b:2d8a:b0:3a4:6f38:f2a2 with SMTP id
 98e67ed59e1d1-3b41c92ce58mr20258182a91.25.1795695991298; Thu, 26 Nov 2026
 04:26:31 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261120-zx29usb-v1-0-b0433258e51b@gmail.com> <20261120-zx29usb-v1-3-b0433258e51b@gmail.com>
In-Reply-To: <20261120-zx29usb-v1-3-b0433258e51b@gmail.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Thu, 26 Nov 2026 13:26:20 +0100
X-Gm-Features: Aa3M54oSOwHoQYSn0V3AtuTR48SOSoC8DE5fzBMGlfQpwJvg-qreLFgHRZWsWfc
Message-ID: <CAPx+jO_zuvcNnBWqUKJHJ246xEDb=FbN6FYKcrN+p6ERmjg2tQ@mail.gmail.com>
Subject: Re: [PATCH 3/6] pmdomain: zte: Add a zx297520v3 power domain driver
To: =?UTF-8?Q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee@kernel.org>,
        Ulf Hansson <ulfh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Agustin Santiago Isasmendi <isasmendi.agus@gmail.com>,
        Navid Ghahremani <ghahramani.navid@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, mfd@lists.linux.dev,
        linux-pm@vger.kernel.org, linux-phy@lists.infradead.org
X-Authority-Analysis: v=2.4 cv=B54sQ+tM c=1 sm=1 tr=0 ts=6b082578 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=kvRnqJp7QHj-O9gkUQ0A:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: 4bA5r3mo2yU0eAnkn2q-LlVTyDgmWctY
X-Proofpoint-ORIG-GUID: 4bA5r3mo2yU0eAnkn2q-LlVTyDgmWctY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA0OCBTYWx0ZWRfXz1SgQSboI6k8
 Xez4fP1iyUKbatpMlfHgAx7fzcpMm/5y9FhVJfD2J73nBFC3sZAzlP9dnvJpJTWmm2ANACKIZ8r
 3KmO/ublB49c6gxyqvYiCjoA1zdje+6+GL8IE5UfznYjSmAMaDBbrcLSIsR4QSmUgJpxlLVErn5
 A9kNTFC7uZ67fMoaQEc4UvCwJ3ps9qPgxVJBTGQj+aXCf1AR240hHGjTlCjc2xsXBvLsJyALro7
 y3Fnxsql9eBJvjJCikLVqKjaXzm422Z2wEjkapv5y2RlVyiuuyePF5qngzfNxwDWlZGQwTmgsLr
 G5nLnYUf2X9BwJJ5kSm4Bd5Ah1mHuC/zDPMKcvA95oo1YUOZKplPVlcmDrn/m3yjyEsFgbsO9M1
 6EaCigJiR/j7uJMniWXaaDtFPhWg5D6ixaQ8B6i2urXQwYmo/JPHm0HOblCrabec475yk2OFOvU
 m6bv/erD29M28ax6KKw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA0OCBTYWx0ZWRfX7iRAmNAKdVMh
 zfNHpyFcJ/tR4FxVzoAB7R0Dzk0W/HLVaTaIZ5dMmPNdDVBSlcLAnYzPVsqF2sZoIhx402IrFUA
 JMnJXwX4ODV+T5otzmLyr29EPisQ0SM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_03,2026-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 phishscore=0 clxscore=1015 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_042633_164266_1E18D3E7 
X-CRM114-Status: GOOD (  32.13  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gRnJpLCBOb3YgMjAsIDIwMjYgYXQgODoyMeKAr1BNIFN0ZWZhbiBEw7ZzaW5nZXIKPHN0ZWZh
bmRvZXNpbmdlckBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gVGhpcyBjb250cm9sbGVyIGhhcyBiaXRz
IGZvciBVU0IsIEhTSUMsIEVEQ1AgKGEgY3J5cHRvZ3JhcGhpYyBlbmdpbmUpCj4gYW5kIEdTTS4g
Tm90IGFsbCBvZiB0aGVtIHdvcmsgdGhlIHdheSBvbmUgbWlnaHQgZXhwZWN0IChzZWUgY29tbWVu
dHMgaW4KPiB0aGUgY29kZSksIGJ1dCB0aGV5IGFyZSB0aGVyZSBhbmQgY2FuIGJlIHNldC4KPgo+
IFNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5j
b20+Cj4KPiAtLS0KPgo+IEZvciBub3cgdGhpcyBkcml2ZXIgY2FuIG9ubHkgZW5hYmxlIGFuZCBk
aXNhYmxlIHRoZSBVU0IgY29udHJvbGxlci4gSQo+IGV4cGVjdCBtb3JlIExURSByZWxhdGVkIHBv
d2VyIHN3aXRjaGVzIHdpbGwgYmUgYWRkZWQgbGF0ZXIsIGJ1dCBJIGRvbid0Cj4gd2FudCB0byBj
b21taXQgdG8gaG93IEkgZXhwb3NlIEdTTSBhbmQgRURDUCBpbiB0aGUgYmluZGluZ3MganVzdCB5
ZXQuCj4gLS0tCj4gIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgIDEgKwo+ICBkcml2ZXJzL3BtZG9tYWluL0tjb25maWcgICAgICAgICAgICAgICAgICAgIHwg
ICAxICsKPiAgZHJpdmVycy9wbWRvbWFpbi9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICB8ICAg
MSArCj4gIGRyaXZlcnMvcG1kb21haW4venRlL0tjb25maWcgICAgICAgICAgICAgICAgfCAgMTUg
KysKPiAgZHJpdmVycy9wbWRvbWFpbi96dGUvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgMiAr
Cj4gIGRyaXZlcnMvcG1kb21haW4venRlL3p4Mjk3NTIwdjMtcG0tZG9tYWluLmMgfCAyODYgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+ICA2IGZpbGVzIGNoYW5nZWQsIDMwNiBpbnNlcnRp
b25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwo+IGluZGV4
IGFiODc5N2I4ZDBhNS4uZTM5NGUwMDQ0ZjFmIDEwMDY0NAo+IC0tLSBhL01BSU5UQUlORVJTCj4g
KysrIGIvTUFJTlRBSU5FUlMKPiBAQCAtNDAzOCw2ICs0MDM4LDcgQEAgRjogICAgICAgIGFyY2gv
YXJtL2Jvb3QvZHRzL3p0ZS8KPiAgRjogICAgIGFyY2gvYXJtL21hY2gtenRlLwo+ICBGOiAgICAg
ZHJpdmVycy9jbGsvenRlLwo+ICBGOiAgICAgZHJpdmVycy9tZmQvenRlLXp4Mjk3NTIwdjMtY3Jt
LmMKPiArRjogICAgIGRyaXZlcnMvcG1kb21haW4venRlLwo+ICBGOiAgICAgaW5jbHVkZS9kdC1i
aW5kaW5ncy9jbG9jay96dGUsengyOTc1MjB2My1jbGsuaAo+ICBGOiAgICAgaW5jbHVkZS9kdC1i
aW5kaW5ncy9waHkvenRlLHp4Mjk3NTIwdjMtdG9wY3JtLmgKPiAgRjogICAgIGluY2x1ZGUvZHQt
YmluZGluZ3MvcmVzZXQvenRlLHp4Mjk3NTIwdjMtcmVzZXQuaAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BtZG9tYWluL0tjb25maWcgYi9kcml2ZXJzL3BtZG9tYWluL0tjb25maWcKPiBpbmRleCA1
MzQxZGZmNjY5YmUuLmQ1MDUwYzIyZjA2NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BtZG9tYWlu
L0tjb25maWcKPiArKysgYi9kcml2ZXJzL3BtZG9tYWluL0tjb25maWcKPiBAQCAtMjEsNSArMjEs
NiBAQCBzb3VyY2UgImRyaXZlcnMvcG1kb21haW4vdGVncmEvS2NvbmZpZyIKPiAgc291cmNlICJk
cml2ZXJzL3BtZG9tYWluL3RoZWFkL0tjb25maWciCj4gIHNvdXJjZSAiZHJpdmVycy9wbWRvbWFp
bi90aS9LY29uZmlnIgo+ICBzb3VyY2UgImRyaXZlcnMvcG1kb21haW4veGlsaW54L0tjb25maWci
Cj4gK3NvdXJjZSAiZHJpdmVycy9wbWRvbWFpbi96dGUvS2NvbmZpZyIKPgo+ICBlbmRtZW51Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcG1kb21haW4vTWFrZWZpbGUgYi9kcml2ZXJzL3BtZG9tYWlu
L01ha2VmaWxlCj4gaW5kZXggZDdhZWUxM2FlNTcxLi5jYzNjYzdiM2QxYzIgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9wbWRvbWFpbi9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvcG1kb21haW4vTWFr
ZWZpbGUKPiBAQCAtMTksNCArMTksNSBAQCBvYmoteSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICs9IHRlZ3JhLwo+ICBvYmoteSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICArPSB0aGVhZC8KPiAgb2JqLXkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKz0g
dGkvCj4gIG9iai15ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICs9IHhpbGlueC8K
PiArb2JqLXkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKz0genRlLwo+ICBvYmot
eSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICArPSBjb3JlLm8gZ292ZXJub3Iubwo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BtZG9tYWluL3p0ZS9LY29uZmlnIGIvZHJpdmVycy9wbWRv
bWFpbi96dGUvS2NvbmZpZwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAw
MDAwLi5jYzMyOWQwODVlNWEKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9wbWRvbWFp
bi96dGUvS2NvbmZpZwo+IEBAIC0wLDAgKzEsMTUgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMC1vbmx5Cj4gKwo+ICtjb25maWcgWlRFX1pYMjk3NTIwVjNfUE1fRE9NQUlO
Cj4gKyAgICAgICB0cmlzdGF0ZSAiWlRFIHp4Mjk3NTIwdjMgcG0gZG9tYWluIgo+ICsgICAgICAg
ZGVwZW5kcyBvbiBIQVNfSU9NRU0KPiArICAgICAgIGRlcGVuZHMgb24gUE0KPiArICAgICAgIGRl
cGVuZHMgb24gTUZEX1pURV9aWDI5NzUyMFYzX0NSTSB8fCBDT01QSUxFX1RFU1QKPiArICAgICAg
IGRlZmF1bHQgU09DX1pYMjk3NTIwVjMKPiArICAgICAgIHNlbGVjdCBQTV9HRU5FUklDX0RPTUFJ
TlMKPiArICAgICAgIHNlbGVjdCBNRkRfU1lTQ09OCj4gKyAgICAgICBoZWxwCj4gKyAgICAgICAg
IFNheSB5IHRvIGVuYWJsZSB0aGUgcG93ZXIgZG9tYWluIGRyaXZlciBmb3IgWlRFIHp4Mjk3NTIw
djMgYm9hcmRzLgo+ICsgICAgICAgICBUaGlzIGRyaXZlciBpcyBuZWNlc3NhcnkgdG8gZW5hYmxl
IHRoZSBVU0IgaGFyZHdhcmUgZm91bmQgb24gdGhpcwo+ICsgICAgICAgICBib2FyZC4gU2F5IHkg
b3IgbSBpZiB5b3UgYXJlIGJ1aWxkaW5nIGEga2VybmVsIGZvciBhIHp4Mjk3NTIwdjMgYmFzZWQK
PiArICAgICAgICAgZGV2aWNlIGFuZCBwbGFuIHRvIHVzZSBpdHMgVVNCIGNhcGFiaWxpdGllcy4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbWRvbWFpbi96dGUvTWFrZWZpbGUgYi9kcml2ZXJzL3Bt
ZG9tYWluL3p0ZS9NYWtlZmlsZQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAw
MDAwMDAwLi44YTQxODVmNDhmZjMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9wbWRv
bWFpbi96dGUvTWFrZWZpbGUKPiBAQCAtMCwwICsxLDIgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gK29iai0kKENPTkZJR19aVEVfWlgyOTc1MjBWM19QTV9E
T01BSU4pICs9IHp4Mjk3NTIwdjMtcG0tZG9tYWluLm8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
bWRvbWFpbi96dGUvengyOTc1MjB2My1wbS1kb21haW4uYyBiL2RyaXZlcnMvcG1kb21haW4venRl
L3p4Mjk3NTIwdjMtcG0tZG9tYWluLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAw
MDAwMDAwMDAwMC4uM2RmNGNkNWYxYjIyCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMv
cG1kb21haW4venRlL3p4Mjk3NTIwdjMtcG0tZG9tYWluLmMKPiBAQCAtMCwwICsxLDI4NiBAQAo+
ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gKy8qCj4gKyAqIENv
cHlyaWdodCAoQykgMjAyNiBTdGVmYW4gRMO2c2luZ2VyCj4gKyAqCj4gKyAqIFRoaXMgZHJpdmVy
IGNvbnRyb2xzIHBvd2VyIGRvbWFpbiByZWdpc3RlcnMgZm91bmQgb24gdGhlIFpURSB6eDI5NzUy
MHYzIGJvYXJkLiBUaGUgVVNCIGFuZCBHU00KPiArICogY29udHJvbGxlcnMgYXJlIGNvbnRyb2xs
ZWQgZnJvbSBoZXJlLgo+ICsgKi8KPiArCj4gKyNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ICsj
aW5jbHVkZSA8bGludXgvbWZkL3N5c2Nvbi5oPgo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+
Cj4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ICsjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2
aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9wbV9kb21haW4uaD4KPiArI2luY2x1ZGUgPGxpbnV4
L3JlZ21hcC5oPgo+ICsKClsuLi5dCgo+ICsKPiArc3RhdGljIGludCB6eDI5X3BkX2F0dGFjaF9k
ZXYoc3RydWN0IGdlbmVyaWNfcG1fZG9tYWluICpkb21haW4sIHN0cnVjdCBkZXZpY2UgKmRldikK
PiArewo+ICsgICAgICAgLyogVGhlIERUIGxpbmsgdG8gdGhlIGNvbnN1bWVyIHRhcmdldHMgdGhl
IChNRkQpIHBhcmVudCwgd2hpY2ggZG9lc24ndCBwcmV2ZW50IHVuYmluZGluZyB0aGUKPiArICAg
ICAgICAqIHRoaXMgZHJpdmVyIG9yIHJlbW92aW5nIHRoZSBtb2R1bGUuIEVpdGhlciB3b3VsZCBs
ZWF2ZSB0aGUgY29uc3VtZXIgd2l0aCBhIGRhbmdsaW5nCj4gKyAgICAgICAgKiByZWZlcmVuY2Uu
Cj4gKyAgICAgICAgKi8KPiArICAgICAgIGlmICghZGV2aWNlX2xpbmtfYWRkKGRldiwgJmRvbWFp
bi0+ZGV2LCBETF9GTEFHX0FVVE9SRU1PVkVfQ09OU1VNRVIpKQo+ICsgICAgICAgICAgICAgICBy
ZXR1cm4gLUVOT01FTTsKClRoaXMgZG9lc24ndCBiZWxvbmcgaW4gdGhpcyBwYXJ0aWN1bGFyIGRy
aXZlciwgYnV0IHJhdGhlciBpbiB0aGUgZ2VucGQKY29yZS4gSW4gZmFjdCwgd2UgaGF2ZSBhIHBy
b3Bvc2VkIHBhdGNoIFsxXSB0aGF0IGlzIGJlaW5nIGRpc2N1c3NlZDsKYnV0IHRoZSBiaWdnZXIg
cXVlc3Rpb24gaXMgaWYgd2UgbmVlZCBnZW5wZCBwcm92aWRlciBkcml2ZXJzIHRvIGJlCnJlbW92
YWJsZSBhdCBhbGwuCgpXaGF0IGlzIHlvdXIgdXNlIGNhc2UgZm9yIHRoaXM/CgpbLi4uXQoKT3Ro
ZXJ3aXNlIHRoaXMgbG9va3MgZ29vZCB0byBtZSEKCktpbmQgcmVnYXJkcwpVZmZlCgpbMV0KaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYxMTEyLTAxLXBtLWRldmljZS1saW5rLXYxLTEt
ODkzMmUwODYyMzc4QGtlcm5lbC5vcmcvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
