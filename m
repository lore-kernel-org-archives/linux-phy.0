Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AEF606A323
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 02:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0PwOTpyn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=b5ZUNpCw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=GaiKr1MN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3SxBiSM8tmJ0vEITVT1u0+Qh0huJtiIOOY2WNBIYmko=; b=0PwOTpynkvHduafnY3np4BVIdO
	YWhus22HTalk4azvKYAUGDAHR6ro7lHqlcZAq/O8KG/5cWSh8AUSZ+Q+NoB/DhNQbqM4S2kqYotmG
	o8HqKY0i9sgO0b5Va95mkoO5yOvjljNlHvglLdxqSNNt5gdIg5dTDC1DsE87NkP6doUuLglX09ZtE
	1QCwD//5TvL0PhdBeF6u3QPQqtdGV/rKakl4/ve0y/nuyuWAg3JF5HhUPqiC/DnuLrViHMCuHUapP
	xOU0s0SbDzvuNRH4EM3FginhrypIPqaexfVdfrL16GZW0LAj+sQd3ZESLgafy4Hgj5XpJu67amk+j
	Xu3ftqKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWPED-0000000BtZ0-3u7U;
	Thu, 26 Nov 2026 02:28:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWPEB-0000000BtYK-3Rlg
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 02:28:53 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6APJB8ut2734230
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 02:28:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zQlWzuu7QJmhsVW0s8/560AxfqBLNdrcweWywjJiqHE=; b=b5ZUNpCwLRcvGhSI
	I+F+bLu1ujFA6F+MY/9pql9vwLcI/LkMozfcJMEIfavqEEvJr9qsXYOYyLiLie2/
	UF9pcboThdc9aF4g3+pJdm4fTLu9KZJ0pyzOJ573LiyQIDUvh5BhU2GpnOWU8Mdk
	6I72mSQvYqbR8uLyosOvwLrAN9glMlKBKZbgdZhqLk1/Du7Au+887FjXs+coiLnA
	yTBNMlGjV5Nat9RCWoLfl97k+B0nlhfUDkgDMDrcBmay3jhuoMg52mkeC7bQ3JRz
	Y0Xg1Amq+n9s4kDJ19tQJuaNNoDnqAL1wS/PhsNQ1esSpnujQkBNuepI2AsOJhUX
	qRjr0A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j61arjbka-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 02:28:49 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-920fb8b9859so39360976d6.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 18:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795660129; x=1796264929; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=zQlWzuu7QJmhsVW0s8/560AxfqBLNdrcweWywjJiqHE=;
        b=GaiKr1MNVdOiijPLjpDMtDDgBfiP6WXRrMcB87EIdb+sT3eiYWYem2IWk3BB10TTSC
         SlaWNTj7OqP+BAvXUjV5k76CEJlm3V/h2KSldUCB3rMupSsexFOr+oxsgF/uDzUlQHh4
         XvZ+2gOd8rhpqFOeOjUTfOzkSlDUoIt3gyYUKT3uzzZGSuvlUwV4/lqOvIH2OP9DrErb
         JePFwqhwKOx+R0bRqZ1gnxZlfQxvXpygqHZhqfqtDJtMV5FDFXY4OIL/NXEnKbkN4omV
         kWxyKMWSakXTXXMLriUomqFga1ec/mSiLdixea1YkKBkwoIzA/3kB7XZEA4kjJImmUWe
         SfUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795660129; x=1796264929;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zQlWzuu7QJmhsVW0s8/560AxfqBLNdrcweWywjJiqHE=;
        b=FUBCaAwALAtxpfBJKxQ1TOZqJ3XX6meKzH4soFEOf4Cf/P4jAGBBHW3VaH3v0vCdLp
         7eR4HTwO/6A3m72eviGRz3GJ/QpcBb1iKrT07iBKYlVAquzVyE/mQrOtNrs+3zdYLlbX
         9wuqM2nAasWQI4xDvNcpVMBw9KR5LV05yZ8O6j+sINY2FUJq87/Z1bfGbJM/jZoxVUaN
         q8H5I2qZYIuOTOl/RD2HdzJxVW888HRjpj8GCUPTDD7D0eNLmz2RTZ3V2X0hhFqxJSy1
         2pZZa6l0jWPdfQAMbhGomj4UIGSSjKNb7obkuMKODNdqryX1bu3OKEcXGHZ4FLA/45LD
         66eQ==
X-Gm-Message-State: APuU4Z+pyDloRLvw9jHJsAre6M9f1gtyiPAPDVqjNefXs+npkIOD7CCq
	rdbwlAs7gfXhoAavdRL/nWNgJzNJm8eFRWFReiVsCKFE6Sw/HttFxXqjAxfWeanQj6DCeZKGpts
	OTVj7ScmwrorfHGBc2C0mQCOKpoOlLk33hd6/CUC6GMXDNGgIMbgAWrDM05AeYomJRGB6
X-Gm-Gg: AZFdTZff6GUVGV1ogc5ynG8xzIRn7nWPioU+OeTX7yzZnIlQz3PfxNrzaLVpKZ8O1ZC
	5b2FMSrBjU0kTViqPj9YMHwLNL+ea0zvU1UN19hMuv0z+h1Dks7gYeuoowA0t5Q3KCLqXDFsdto
	3wWeWJxt2xnHYmwLi15XNWME1ZZ/wNLhIqtWDBgehPkyRB8PnHMwmzW4C556QObCdRJBJ3JnjmJ
	WQvCDgmP0lpgTCeW0G84eRmQnqOeJWMIDgd4nc6ZCyYxeQqH7xoyZRMECEVl7JV3LRRY8TnZIDz
	rdn5eF2y2GdsfAut0NH6XRtuf0RzKX2CqyXCjknuegCxudQKOQO26c8oNAEnYcG1ae2ENoN/C7Q
	nSjjRAho/9WNYyj0k/TBvf5nclgVUWSCJ43fUM39k10BxRwk6ePphuoBjchoxbphAeQrQq8E6RF
	ORZ0smKxDhCotYf9SaaajpGj2Id8eYHj6aUok=
X-Received: by 2002:a05:6214:3ca0:b0:921:7875:29ac with SMTP id 6a1803df08f44-921787529c5mr86599966d6.12.1795660129168;
        Wed, 25 Nov 2026 18:28:49 -0800 (PST)
X-Received: by 2002:a05:6214:3ca0:b0:921:7875:29ac with SMTP id 6a1803df08f44-921787529c5mr86599566d6.12.1795660128716;
        Wed, 25 Nov 2026 18:28:48 -0800 (PST)
Received: from [10.38.247.193] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-921349d383asm177102666d6.22.2026.11.25.18.28.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 18:28:48 -0800 (PST)
Message-ID: <ff007bf8-09ea-4b70-8475-7a97ebdca755@oss.qualcomm.com>
Date: Thu, 26 Nov 2026 10:28:39 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 17/23] arm64: dts: qcom: sm8750-qrd: Enable S5KJN1
 camera sensor
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
 <20261114-add-support-for-camss-on-sm8750-v7-17-8ff2a11835f6@oss.qualcomm.com>
 <c4c72389-2a8e-4278-8667-cdd4d8f72225@linaro.org>
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <c4c72389-2a8e-4278-8667-cdd4d8f72225@linaro.org>
X-Proofpoint-GUID: 92LP6VU2L5ysTmleSfIV2Vs3qxAz4sjz
X-Authority-Analysis: v=2.4 cv=OIOyTiaB c=1 sm=1 tr=0 ts=6b079961 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=j4L9U9e7tDSPgzuknP8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 92LP6VU2L5ysTmleSfIV2Vs3qxAz4sjz
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDAwOCBTYWx0ZWRfX9ivyh/V2t5rj
 yZanZw27XzrSzlB/jnFGvm5M48BQauOdiP9V2zi+t0AYoFLhgNGrU3sP9r0DVUT89FqAjoinXai
 I2hypHvFVUbcSbdhKilfsNnz3oJprvU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDAwOCBTYWx0ZWRfX3XvFwgA/mUr9
 9iTosQeehkKxHwZbEJVsKMMo9Qn5WZP0m54N3QZ5bK6gVq9nA5YQXo+jKR0GymrnhIKsL5OdW0w
 k5uELa2VsTm/Ol9d4A6fHLULHyQq+qxHdBmyz+VdSvvefI4Wa4A33TbqPngor9orILOuG2kIAtl
 94ES/dt+lLapY6IVqvJ2E62yGtebE7vXmNNruZ6+Wyf1meTIxJmwAj3W6FYHnCyqaNN5jq5PqgY
 0HWFSs94BXPShdJ2fLXtu18DLGQGN1f4DnBncwE05gWDVCj+s9BETcPu14Dz+4KHYK8EElzMB6r
 WgPpC8ahE6z7H2EE/QL9Lg7FlhbkVh+WOJ1Yy/8eNZgV96WF/zSC+oWwIJ9V6EgzyoHTZXdeEjt
 7ZHhM4VfQa/pjYJLJY5vRnyVMHgGUbvMJ9KHX2AtlhJkom1LACHCkJQJl6kEHeB46HqBECTWS1E
 16F+PHzSpWHRFDmyuxA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_05,2026-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 phishscore=0
 adultscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_182851_974167_21CA7FF1 
X-CRM114-Status: GOOD (  16.95  )
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

SGkgVmxhZGltaXIsCgpPbiAxMS8yNS8yMDI2IDk6MTkgUE0sIFZsYWRpbWlyIFphcG9sc2tpeSB3
cm90ZToKPiBIaSBXZW5tZW5nLgo+IAo+IE9uIDExLzE0LzI2IDEzOjI5LCBXZW5tZW5nIExpdSB3
cm90ZToKPj4gRW5hYmxlIENBTVNTLCBDQ0kxIGFuZCBDU0lQSFkzIG9uIHRoZSBTTTg3NTAgUVJE
IGJvYXJkLiBUaGUgUzVLSk4xCj4+IGNhbWVyYSBzZW5zb3IgaXMgY29ubmVjdGVkIHRvIENDSTEg
STJDIGJ1cyAwLCB1c2VzIE1DTEszIGF0IDI0IE1IeiBhbmQKPj4gY29ubmVjdHMgdG8gQ1NJUEhZ
MyBvdmVyIGEgNC1sYW5lIEQtUEhZIGxpbmsuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFdlbm1lbmcg
TGl1IDx3ZW5tZW5nLmxpdUBvc3MucXVhbGNvbW0uY29tPgo+PiAtLS0KPj4gwqAgYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL3NtODc1MC1xcmQuZHRzIHwgNzIgKysrKysrKysrKysrKysrKysrKysr
KysgCj4+ICsrKysrKysrKysKPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDcyIGluc2VydGlvbnMoKykK
Pj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTg3NTAtcXJkLmR0
cyBiL2FyY2gvYXJtNjQvIAo+PiBib290L2R0cy9xY29tL3NtODc1MC1xcmQuZHRzCj4+IGluZGV4
IAo+PiA3NTkyN2UxZjdiOWFiMDMxNjc4MWM2NGRiY2M4MmQzMzk0YzQxNGY2Li5jOTJhMWYzYzQ3
YmQ1Y2JhZTI2ODU0NjE0NjgyYzNiYzdkYWEwMzk4IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3Fjb20vc204NzUwLXFyZC5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3NtODc1MC1xcmQuZHRzCj4+IEBAIC03LDYgKzcsNyBAQAo+PiDCoCAjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+Cj4+IMKgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9sZWRz
L2NvbW1vbi5oPgo+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL21lZGlhL3ZpZGVvLWludGVyZmFj
ZXMuaD4KPj4gwqAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3JlZ3VsYXRvci9xY29tLHJwbWgtcmVn
dWxhdG9yLmg+Cj4+IMKgICNpbmNsdWRlICJzbTg3NTAuZHRzaSIKPj4gwqAgI2luY2x1ZGUgInBt
ODAxMC5kdHNpIgo+PiBAQCAtODU4LDYgKzg1OSw3MCBAQCB2cmVnX2w3bl8zcDM6IGxkbzcgewo+
PiDCoMKgwqDCoMKgIH07Cj4+IMKgIH07Cj4+ICsmY2Ftc3Mgewo+PiArwqDCoMKgIHN0YXR1cyA9
ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gKyZjYW1zc19jc2lwaHkzX2luX3BvcnQgewo+PiArwqDC
oMKgIGNhbXNzX2NzaXBoeTNfaW5lcDogZW5kcG9pbnQgewo+PiArwqDCoMKgwqDCoMKgwqAgZGF0
YS1sYW5lcyA9IDwxIDIgMyA0PjsKPj4gK8KgwqDCoMKgwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9
IDwmY3NpcGh5M19vdXRfZXA+Owo+PiArwqDCoMKgIH07Cj4+ICt9Owo+PiArCj4+ICsmY2NpMSB7
Cj4+ICvCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+PiArfTsKPj4gKwo+PiArJmNjaTFfaTJjMCB7
Cj4+ICvCoMKgwqAgY2FtZXJhQDU2IHsKPj4gK8KgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAi
c2Ftc3VuZyxzNWtqbjEiOwo+PiArwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4NTY+Owo+PiArCj4+
ICvCoMKgwqDCoMKgwqDCoCByZXNldC1ncGlvcyA9IDwmdGxtbSAxMDkgR1BJT19BQ1RJVkVfTE9X
PjsKPj4gK8KgwqDCoMKgwqDCoMKgIHBpbmN0cmwtMCA9IDwmY2FtX21jbGszX2RlZmF1bHQgJmNh
bTNfcmVzZXRfZGVmYXVsdD47Cj4+ICvCoMKgwqDCoMKgwqDCoCBwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmNhbWJpc3RtY2xrY2Mg
Q0FNX0JJU1RfTUNMS19DQ19NQ0xLM19DTEs+Owo+PiArwqDCoMKgwqDCoMKgwqAgYXNzaWduZWQt
Y2xvY2tzID0gPCZjYW1iaXN0bWNsa2NjIENBTV9CSVNUX01DTEtfQ0NfTUNMSzNfQ0xLPjsKPj4g
K8KgwqDCoMKgwqDCoMKgIGFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDI0MDAwMDAwPjsKPj4gKwo+
PiArwqDCoMKgwqDCoMKgwqAgdmRkYS1zdXBwbHkgPSA8JnZyZWdfbDRtXzJwOD47Cj4+ICvCoMKg
wqDCoMKgwqDCoCB2ZGRkLXN1cHBseSA9IDwmdnJlZ19sMm1fMXAwNTY+Owo+PiArwqDCoMKgwqDC
oMKgwqAgdmRkaW8tc3VwcGx5ID0gPCZ2cmVnX2w1bV8xcDg+Owo+PiArCj4+ICvCoMKgwqDCoMKg
wqDCoCBwb3J0IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgczVram4xX291dF9lcDogZW5k
cG9pbnQgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRhdGEtbGFuZXMgPSA8
MSAyIDMgND47Cj4gCj4gJ2RhdGEtbGFuZXMnIHByb3BlcnR5IGNhbiBiZSByZW1vdmVkIGZyb20g
aGVyZS4KPiAKCkknZCBwcmVmZXIgdG8ga2VlcCBkYXRhLWxhbmVzIGhlcmUsIGFzIGl0IGRlc2Ny
aWJlcyB0aGUgYWN0dWFsIDQtbGFuZSAKRC1QSFkgd2lyaW5nIHJhdGhlciB0aGFuIHJlbHlpbmcg
b24gdGhlIGRyaXZlciBkZWZhdWx0LiBJdCdzIGFsc28gCmNvbnNpc3RlbnQgd2l0aCBxY202NDkw
LWZhaXJwaG9uZS1mcDUuZHRzIGFuZCBrZWVwcyB0aGUgRFQgdW5hbWJpZ3VvdXMgCmlmIG90aGVy
IGxhbmUgY29uZmlndXJhdGlvbnMgYXJlIHN1cHBvcnRlZCBpbiB0aGUgZnV0dXJlLgoKVGhhbmtz
LApXZW5tZW5nCgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxpbmstZnJlcXVl
bmNpZXMgPSAvYml0cy8gNjQgPDcwMDAwMDAwMD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZjc2lwaHkzX2luX2VwPjsKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfTsKPj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+ICvCoMKgwqAgfTsKPj4g
K307Cj4+ICsKPj4gKyZjc2lwaHkzIHsKPj4gK8KgwqDCoCB2ZGRhLTBwOS1zdXBwbHkgPSA8JnZy
ZWdfbDFmXzBwODg+Owo+PiArwqDCoMKgIHZkZGEtMXAyLXN1cHBseSA9IDwmdnJlZ19sM2dfMXAy
PjsKPj4gKwo+PiArwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gKyZjc2lw
aHkzX2luX3BvcnQgewo+PiArwqDCoMKgIGNzaXBoeTNfaW5fZXA6IGVuZHBvaW50IHsKPj4gK8Kg
wqDCoMKgwqDCoMKgIGJ1cy10eXBlID0gPE1FRElBX0JVU19UWVBFX0NTSTJfRFBIWT47Cj4+ICvC
oMKgwqDCoMKgwqDCoCBjbG9jay1sYW5lcyA9IDwwPjsKPj4gK8KgwqDCoMKgwqDCoMKgIGRhdGEt
bGFuZXMgPSA8MSAyIDMgND47Cj4+ICvCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8
JnM1a2puMV9vdXRfZXA+Owo+PiArwqDCoMKgIH07Cj4+ICt9Owo+PiArCj4+ICsmY3NpcGh5M19v
dXRfcG9ydCB7Cj4+ICvCoMKgwqAgY3NpcGh5M19vdXRfZXA6IGVuZHBvaW50IHsKPj4gK8KgwqDC
oMKgwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmY2Ftc3NfY3NpcGh5M19pbmVwPjsKPj4gK8Kg
wqDCoCB9Owo+PiArfTsKPj4gKwo+PiDCoCAmZ3B1IHsKPj4gwqDCoMKgwqDCoCBzdGF0dXMgPSAi
b2theSI7Cj4+IMKgIH07Cj4+IEBAIC0xMDgxLDYgKzExNDYsMTMgQEAgJnRsbW0gewo+PiDCoMKg
wqDCoMKgIC8qIHJlc2VydmVkIGZvciBzZWN1cmUgd29ybGQgKi8KPj4gwqDCoMKgwqDCoCBncGlv
LXJlc2VydmVkLXJhbmdlcyA9IDwzNiA0PiwgPDc0IDE+Owo+PiArwqDCoMKgIGNhbTNfcmVzZXRf
ZGVmYXVsdDogY2FtMy1yZXNldC1kZWZhdWx0LXN0YXRlIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHBp
bnMgPSAiZ3BpbzEwOSI7Cj4+ICvCoMKgwqDCoMKgwqDCoCBmdW5jdGlvbiA9ICJncGlvIjsKPj4g
K8KgwqDCoMKgwqDCoMKgIGRyaXZlLXN0cmVuZ3RoID0gPDI+Owo+PiArwqDCoMKgwqDCoMKgwqAg
Ymlhcy1kaXNhYmxlOwo+PiArwqDCoMKgIH07Cj4+ICsKPj4gwqDCoMKgwqDCoCBzZGMyX2NhcmRf
ZGV0X246IHNkLWNhcmQtZGV0LW4tc3RhdGUgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcGlucyA9
ICJncGlvNTUiOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZnVuY3Rpb24gPSAiZ3BpbyI7Cj4+Cj4g
Cj4gUmV2aWV3ZWQtYnk6IFZsYWRpbWlyIFphcG9sc2tpeSA8dmxhZGltaXIuemFwb2xza2l5QGxp
bmFyby5vcmc+Cj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
