Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDA6606A33C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 02:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IVRTfaLj;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WfoWGa1S;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=MHV+fXlH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=b2BG5Ku4KYKZ64TKsztsQrHa1h9dGmbr19Wk9ShNbTM=; b=IVRTfaLjGxyOGTFT+PCsUFcOfL
	MhuaDd7fvmG8y22xKGE7F9dJ2f4iQpR9F9/N4aejhBrR8+jYxgIQSrE/o066ogf7crrOlGuN/m2aS
	DetzMo7ku1C67ExwSAAlsY1jtsEbvF7Z8/GegaKB7y+LJF7AurmGYUxipZQA2ANg100fCdYGXdahD
	e30UyFeGghg9lHAe9kG+hY/2co/RpME2Y7pCAp+zSymrQaO2mhq8mwKj2UahjupldhkifjZ5DmF0T
	HNlk0hFzsLr/3qIItORuPo1pMUbDbY9+0P2TFxjgP/QZHgiehVbRLn72ty4HBuPUcu1aHJ8dgEm6G
	vveDAd3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWPHU-0000000BuK3-01fe;
	Thu, 26 Nov 2026 02:32:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWPHR-0000000BuJB-2DI0
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 02:32:14 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6APJAsUq648260
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 02:32:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MQ1iBvVrMMpIWy460OOriq542kT+Ih2W70vOTyo6HdE=; b=WfoWGa1Sw1GOI+hC
	/OSurM9Nx3Asa/NFMQzIld1qGMqXtwTO1Ie+/LNl+oZKTZhW4crNOLM36shmCzP4
	U2yiq+itKTY5YG6Dt7FlWA4hZ6exYClmrloeqCgyDqOj58iiIHhP5rCIyPXrWo1X
	3o9T0PfABWUNnSp9pfEfM1l++97bsrCRBXw5jNvqjXGCXZPVAIf9sQdLN/oLMe4j
	VoZx0QR3YTcwBOfk54I6FjQ0LiiK+M759XFcARvzGa/mF7xcoHhI8wB/h8Ul+Lkr
	E+MZ4/9jfFi6SJ8gwJWCB3pzTkNpOvwd7iVXDazcPskXpULhD41CAp0uxaVsBvWN
	BXDbAA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j61ahtbxg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 02:32:12 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-9212b76b1f9so82911016d6.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 18:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795660332; x=1796265132; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=MQ1iBvVrMMpIWy460OOriq542kT+Ih2W70vOTyo6HdE=;
        b=MHV+fXlH4liwkHnsW+VssVlttsuVakmMps05U70ZaZ60eaUa04OTMIyN0NUES/SxQz
         kbl6ZHMSGcF3scia291yw/kQ+x3JJn85+lnnqu59vh/GDQxBUXv8pNGAmdM5V74we2Ul
         fK5IkFa1BsVDdkilzE7wITOmvnLQbUyWVR3Ai6Ax1XDWfQ3Iwje1Cdy4GHLVs9+tl7f/
         WM2Xv+ap2Cr4oe0Yo1Cs9evAviLCWGzXg524JXunBCfJjk92Sjdp1QQAgRRfNa1KxH3m
         ru1rmN/7rCc8n4Ta1rz5rBKf6qxkjMR/wJIbiCfK2uQYS33jbxYeNZPyfSpgrwqCI144
         z5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795660332; x=1796265132;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MQ1iBvVrMMpIWy460OOriq542kT+Ih2W70vOTyo6HdE=;
        b=Is9MvFEBXK9VUYBNrXbh5+L/nBumj1MMsMGY+3FBmJUK8ba+NAl+ubrIJDxxFW2HU+
         mfDQCpxSrKP0251HJHwyM564/U5RWZIBfKEYUbFXLQd1fHvBE9XmnKzKt/QP0fSrQENB
         fAkV6xqRwq5KLNVeq9v+jimhbucW2D8echdeyQc0SW559XKvJxyNt+XtxTDVBjwWHQ+9
         rKw6UpfxSB7Ca9Mc250NVoJ0i8vNCvxHVEaUVK9Oy/6pyg8QkGb/06LPsBJhhu6yTewx
         VoQuFA1jP3AO5g+DWaTSwWS6XCuQy/hGRNA2nQYWY3cJdh+edF/ygviCRUTkvZO3TRTH
         rZ/Q==
X-Gm-Message-State: APuU4Z9PzZL52gPKjt8IMjyFtzECtjKBlnLX2nZPT4BvZsdoPLQ2tswv
	d4eiOzhrG2ACXx5/4mIi200KpgFFj6WZqrGzxD62FC0RwEzFJNSg5biUPSkgcLU1N2Pp2mOTyLO
	hE5xuuV2N7AlfqUFAFtC6c2ay5JYJWS18FJkAf/ObIxtppYyCoGBWCTm9zZ94ItXv6xFC
X-Gm-Gg: AZFdTZdDOUHhxCXozI+K4/g41IpBSSwSF9b8gl9T51rGNFaVJ3ry0+oSD5McADtvVtg
	MPR/jk8F4UqFxQy4/wrpP7j6fjcHGWZufTq+hnkumlLp7RPTJddkS1ZCeP4sCD8sDWit0qdvSm2
	kfT3qlN2PxcQ8wlOuNHE3zPSSllhcXRfUJy5xBnsPk7d6vnNN7F4/r0a1k2/sMirOOLjBS73i06
	lH+NWOGl78nsYqnySDJJdnTHr9cRfZzZLhUTHZ5Vtixe7cysaYO4CK/LJw4XOkFNDd5xWzt49Dh
	fFcytsFnWXottq258y8uStHCwKT3nNgX0Jms6orLpPhp7xiF3E78nKmVwJ0AyBKplSpz41lptgK
	U/b4ydghJJhY/XC4Srcqjtn0+ZtnIraagZCiq97sKBTCJaPVSvtMbNCh6jyT1c4kjVNgjitMjob
	0BifFSD1seV8EclxLPtIBWBq9oD9TQlTQoTyE=
X-Received: by 2002:a05:6214:3f89:b0:921:3c14:a08e with SMTP id 6a1803df08f44-9213c14c1cbmr332066266d6.15.1795660331830;
        Wed, 25 Nov 2026 18:32:11 -0800 (PST)
X-Received: by 2002:a05:6214:3f89:b0:921:3c14:a08e with SMTP id 6a1803df08f44-9213c14c1cbmr332065816d6.15.1795660331250;
        Wed, 25 Nov 2026 18:32:11 -0800 (PST)
Received: from [10.38.247.193] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-9213479655asm178017406d6.4.2026.11.25.18.32.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 18:32:10 -0800 (PST)
Message-ID: <86390ae2-8c33-443b-9730-ebaf4db1b968@oss.qualcomm.com>
Date: Thu, 26 Nov 2026 10:32:02 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 23/23] arm64: dts: qcom: eliza-evk-imx577-camera: Add
 DT overlay
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-23-8ff2a11835f6@oss.qualcomm.com>
 <38bdcad3-2c2f-4e55-9a3e-17047b9f486f@linaro.org>
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <38bdcad3-2c2f-4e55-9a3e-17047b9f486f@linaro.org>
X-Proofpoint-GUID: 76vEwNOnhv4eh_H_6iXeeWuos27boUcp
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDAwOCBTYWx0ZWRfX5TTw5Np+1xhI
 j+D1TeaEM7U9ML0/G7dW1MpIz52Ieax9CD274j3pN1E6M2GtSWOwTvPXltgYnFR6T3+bL+cOQjo
 d//6jvx0j4KrjTNbU6CZLxopc6gy2LM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDAwOCBTYWx0ZWRfX6qRVkTfzV4F0
 9F6oNbJHwlNPp/RC/2X1Q1uriVs3ETKe8l00hxsQTB2m9PJOW/z1sodkxordZcjy/czfA6xlJRQ
 edMpj+VBK35CMM/vn09Vk0uIYl4xJtQqiOADldPu5+es+wC0tSbFnHg6E4N0bYMjGFo0yoqCnA9
 qWDaiIXvHkPiwpeuxQnqfsUK3sc/RC4coi8L6lcisxD6uMWiO+IwrGoLyEYiALfVnS3DnoOG1lG
 cs0Do7qWqqg6ime53fl7ByrHfCFAv3a7t0PGIJWK6WwY2S8333dypDvQD0S8yFjWUZJmdEuMYRe
 rWeum5YbkXG/SO4PvrFUWL0cA7X+3zCZz7HrCQ911vJMOMfwfQkDss4rcZg3qkwEznSXZWzWi1Y
 GrQ+gJHm4NyR9vGLGT8c9mU8dXw+TRc3UPT8uZtyMvbKFUQNCKGv/Sf1BMY1wd4p3qesS44K6/T
 csaR0FK5bchY6L7DPCA==
X-Proofpoint-ORIG-GUID: 76vEwNOnhv4eh_H_6iXeeWuos27boUcp
X-Authority-Analysis: v=2.4 cv=BbxNQbt2 c=1 sm=1 tr=0 ts=6b079a2c cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=cvRs29UJe7UXO2q9YXUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_05,2026-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_183213_570983_54393F2F 
X-CRM114-Status: GOOD (  15.76  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CgpPbiAxMS8yNS8yMDI2IDk6MjUgUE0sIFZsYWRpbWlyIFphcG9sc2tpeSB3cm90ZToKPiBPbiAx
MS8xNC8yNiAxMzoyOSwgV2VubWVuZyBMaXUgd3JvdGU6Cj4+IEFkZCBhbiBvdmVybGF5IGZvciBv
cHRpb25hbCBJTVg1NzcgaW50ZWdyYXRpb24gb24gdGhlIEVsaXphIENRUyBFVkssCj4+IHNoYXJl
ZCBieSB0aGUgZU1NQyBhbmQgVUZTIHZhcmlhbnRzLiBUaGUgc2Vuc29yIGlzIG9uIENDSTAgSTJD
IGJ1cyAwLAo+PiB1c2VzIE1DTEswIHdpdGggaXRzIHJlc2V0IG9uIEdQSU84IGFuZCBjb25uZWN0
cyB0byBDU0lQSFkwIG92ZXIgQ1NJLTIuCj4+IFRoZSBvdmVybGF5IGVuYWJsZXMgQ0FNU1MsIENT
SVBIWTAgYW5kIENDSTAuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFdlbm1lbmcgTGl1IDx3ZW5tZW5n
LmxpdUBvc3MucXVhbGNvbW0uY29tPgo+PiAtLS0KPj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNCArCj4+
IMKgIC4uLi9ib290L2R0cy9xY29tL2VsaXphLWV2ay1pbXg1NzctY2FtZXJhLmR0c2/CoMKgwqDC
oCB8IDg1ICsrKysrKysrKysrKyAKPj4gKysrKysrKysrKwo+PiDCoCAyIGZpbGVzIGNoYW5nZWQs
IDg5IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9NYWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvIAo+PiBxY29tL01ha2VmaWxlCj4+
IGluZGV4IAo+PiA2NGQyY2ZkYjg5Yzg5ZjFjNmViMDA4NWUyYmY1ODc3ZmY5ODBkYmM0Li5hOTM3
NGM1NGRkNTE0ZjUzYjdhYTk3ZjU1ODFjOTljYjZlNzU2OTdkIDEwMDY0NAo+PiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vTWFrZWZpbGUKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL01ha2VmaWxlCj4+IEBAIC0xNiw2ICsxNiwxMCBAQCBkdGItJChDT05GSUdfQVJDSF9R
Q09NKcKgwqDCoCArPSBhcHE4MDk2c2ctZGI4MjBjLmR0Ygo+PiDCoCBkdGItJChDT05GSUdfQVJD
SF9RQ09NKcKgwqDCoCArPSBhcHE4MDk2LWlmYzY2NDAuZHRiCj4+IMKgIGR0Yi0kKENPTkZJR19B
UkNIX1FDT00pwqDCoMKgICs9IGVsaXphLWNxcy1ldmstZW1tYy5kdGIKPj4gwqAgZHRiLSQoQ09O
RklHX0FSQ0hfUUNPTSnCoMKgwqAgKz0gZWxpemEtY3FzLWV2ay11ZnMuZHRiCj4+ICtlbGl6YS1j
cXMtZXZrLWVtbWMtaW14NTc3LWNhbWVyYS1kdGJzIDo9IGVsaXphLWNxcy1ldmstZW1tYy5kdGIg
Cj4+IGVsaXphLWV2ay1pbXg1NzctY2FtZXJhLmR0Ym8KPj4gK2VsaXphLWNxcy1ldmstdWZzLWlt
eDU3Ny1jYW1lcmEtZHRicyA6PSBlbGl6YS1jcXMtZXZrLXVmcy5kdGIgZWxpemEtIAo+PiBldmst
aW14NTc3LWNhbWVyYS5kdGJvCj4+ICtkdGItJChDT05GSUdfQVJDSF9RQ09NKcKgwqDCoCArPSBl
bGl6YS1jcXMtZXZrLWVtbWMtaW14NTc3LWNhbWVyYS5kdGIKPj4gK2R0Yi0kKENPTkZJR19BUkNI
X1FDT00pwqDCoMKgICs9IGVsaXphLWNxcy1ldmstdWZzLWlteDU3Ny1jYW1lcmEuZHRiCj4+IMKg
IGR0Yi0kKENPTkZJR19BUkNIX1FDT00pwqDCoMKgICs9IGVsaXphLW10cC5kdGIKPj4gwqAgZHRi
LSQoQ09ORklHX0FSQ0hfUUNPTSnCoMKgwqAgKz0gZ2x5bXVyLWFzdXMtemVuYm9vay1hMTQtdXgz
NDA3bmEuZHRiCj4+IMKgIGR0Yi0kKENPTkZJR19BUkNIX1FDT00pwqDCoMKgICs9IGdseW11ci1h
c3VzLXplbmJvb2stYTE2LXV4MzYwN29hLmR0Ygo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL2VsaXphLWV2ay1pbXg1NzctY2FtZXJhLmR0c28gYi8gCj4+IGFyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9lbGl6YS1ldmstaW14NTc3LWNhbWVyYS5kdHNvCj4+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4+IGluZGV4IAo+PiAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwLi4wOGYyZTNjNjJkYmRhZjIzYTJmNmNhNjlhNWMzOTIwNTRjYjFjMjI1Cj4+IC0t
LSAvZGV2L251bGwKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2VsaXphLWV2ay1p
bXg1NzctY2FtZXJhLmR0c28KPj4gQEAgLTAsMCArMSw4NSBAQAo+PiArLy8gU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IEJTRC0zLUNsYXVzZQo+PiArLyoKPj4gKyAqIENvcHlyaWdodCAoYykgUXVh
bGNvbW0gVGVjaG5vbG9naWVzLCBJbmMuIGFuZC9vciBpdHMgc3Vic2lkaWFyaWVzLgo+PiArICov
Cj4+ICsKPj4gKy9kdHMtdjEvOwo+PiArL3BsdWdpbi87Cj4+ICsKPj4gKyNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9jbG9jay9xY29tLGVsaXphLWNhbWJpc3RtY2xrY2MuaD4KPj4gKyNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9tZWRpYS92
aWRlby1pbnRlcmZhY2VzLmg+Cj4+ICsKPj4gKyZjYW1zcyB7Cj4+ICvCoMKgwqAgc3RhdHVzID0g
Im9rYXkiOwo+PiArfTsKPj4gKwo+PiArJmNhbXNzX2NzaXBoeTBfaW5fcG9ydCB7Cj4+ICvCoMKg
wqAgY2Ftc3NfY3NpcGh5MF9pbmVwOiBlbmRwb2ludCB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBkYXRh
LWxhbmVzID0gPDEgMiAzIDQ+Owo+PiArwqDCoMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0g
PCZjc2lwaHkwX291dF9lcD47Cj4+ICvCoMKgwqAgfTsKPj4gK307Cj4+ICsKPj4gKyZjY2kwIHsK
Pj4gK8KgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiArCj4+ICsmY2NpMF9pMmMwIHsK
Pj4gK8KgwqDCoCAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gK8KgwqDCoCAjc2l6ZS1jZWxscyA9
IDwwPjsKPj4gKwo+PiArwqDCoMKgIGNhbWVyYUAxYSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBjb21w
YXRpYmxlID0gInNvbnksaW14NTc3IjsKPj4gK8KgwqDCoMKgwqDCoMKgIHJlZyA9IDwweDFhPjsK
Pj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgcmVzZXQtZ3Bpb3MgPSA8JnRsbW0gOCBHUElPX0FDVElW
RV9MT1c+Owo+PiArwqDCoMKgwqDCoMKgwqAgcGluY3RybC0wID0gPCZjYW1fbWNsazBfZGVmYXVs
dCAmY2FtMF9yZXNldF9kZWZhdWx0PjsKPj4gK8KgwqDCoMKgwqDCoMKgIHBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmY2FtYmlzdG1j
bGtjYyBDQU1fQklTVF9NQ0xLX0NDX01DTEswX0NMSz47Cj4+ICvCoMKgwqDCoMKgwqDCoCBhc3Np
Z25lZC1jbG9ja3MgPSA8JmNhbWJpc3RtY2xrY2MgQ0FNX0JJU1RfTUNMS19DQ19NQ0xLMF9DTEs+
Owo+PiArwqDCoMKgwqDCoMKgwqAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MjQwMDAwMDA+Owo+
PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBkb3ZkZC1zdXBwbHkgPSA8JnZyZWdfbDdiPjsKPj4gKwo+
PiArwqDCoMKgwqDCoMKgwqAgcG9ydCB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlteDU3
N19vdXRfZXA6IGVuZHBvaW50IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBk
YXRhLWxhbmVzID0gPDEgMiAzIDQ+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGxpbmstZnJlcXVlbmNpZXMgPSAvYml0cy8gNjQgPDYwMDAwMDAwMD47Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZjc2lwaHkwX2luX2VwPjsK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+ICvC
oMKgwqAgfTsKPj4gK307Cj4+ICsKPj4gKyZjc2lwaHkwIHsKPj4gK8KgwqDCoCB2ZGRhLTBwOS1z
dXBwbHkgPSA8JnZyZWdfbDJiPjsKPj4gK8KgwqDCoCB2ZGRhLTFwMi1zdXBwbHkgPSA8JnZyZWdf
bDRiPjsKPj4gKwo+PiArwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gKyZj
c2lwaHkwX2luX3BvcnQgewo+PiArwqDCoMKgIGNzaXBoeTBfaW5fZXA6IGVuZHBvaW50IHsKPj4g
K8KgwqDCoMKgwqDCoMKgIGJ1cy10eXBlID0gPE1FRElBX0JVU19UWVBFX0NTSTJfRFBIWT47Cj4+
ICvCoMKgwqDCoMKgwqDCoCBjbG9jay1sYW5lcyA9IDwwPjsKPiAKPiBIZXJlICdjbG9jay1sYW5l
cycgc2hvdWxkIGJlIGRyb3BwZWQsIGl0IHNoYWxsIGJlIGltcGxpZWQsIGFuZCBJIGJlbGl2ZQo+
IGl0IGlzLgo+IAoKWW91J3JlIHJpZ2h0LCBJJ2xsIGRyb3AgaXQgaW4gbmV4dCB2ZXJzaW9uLgoK
VGhhbmtzLApXZW5tZW5nCgo+PiArwqDCoMKgwqDCoMKgwqAgZGF0YS1sYW5lcyA9IDwxIDIgMyA0
PjsKPj4gK8KgwqDCoMKgwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmaW14NTc3X291dF9lcD47
Cj4+ICvCoMKgwqAgfTsKPj4gK307Cj4+ICsKPj4gKyZjc2lwaHkwX291dF9wb3J0IHsKPj4gK8Kg
wqDCoCBjc2lwaHkwX291dF9lcDogZW5kcG9pbnQgewo+PiArwqDCoMKgwqDCoMKgwqAgcmVtb3Rl
LWVuZHBvaW50ID0gPCZjYW1zc19jc2lwaHkwX2luZXA+Owo+PiArwqDCoMKgIH07Cj4+ICt9Owo+
PiArCj4+ICsmdGxtbSB7Cj4+ICvCoMKgwqAgY2FtMF9yZXNldF9kZWZhdWx0OiBjYW0wLXJlc2V0
LWRlZmF1bHQtc3RhdGUgewo+PiArwqDCoMKgwqDCoMKgwqAgcGlucyA9ICJncGlvOCI7Cj4+ICvC
oMKgwqDCoMKgwqDCoCBmdW5jdGlvbiA9ICJncGlvIjsKPj4gK8KgwqDCoMKgwqDCoMKgIGRyaXZl
LXN0cmVuZ3RoID0gPDI+Owo+PiArwqDCoMKgwqDCoMKgwqAgYmlhcy1kaXNhYmxlOwo+PiArwqDC
oMKgIH07Cj4+ICt9Owo+Pgo+IAo+IFJldmlld2VkLWJ5OiBWbGFkaW1pciBaYXBvbHNraXkgPHZs
YWRpbWlyLnphcG9sc2tpeUBsaW5hcm8ub3JnPgo+IAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
