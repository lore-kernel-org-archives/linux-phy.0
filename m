Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B1F0F46122
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 14:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCLnS6fJHj44SgkzzN+u+OGWBmwL1nTzbrYncrndFU8=; b=N3jjqQsf1SgkL/
	+nanCSQ8yDC3lBmv/63yqNK86v+1UHR9buk/uYaQM6gBcDqLsPjpXp4tKha3oicthJbk9kHOX/xc/
	jYXGa0tZJue6hj0oTu62P8b9A6VgXCo8RozDsU76yoVCGRR0+psdrafCo1r36dA4o29x6juY/Fp8X
	l2mi8IEXaha6CWV3gq/bYRpOMGgqUe4zn/Fb/5stvwWJsGmAbfLShus08hyRAZUD67C7pZ7upxwxf
	c45a8RlaA8fTlqnle5CWJGLz9mBQbt7uXNvCjV3aAsTUJC2shntQ6MLnFk3LfrcwJe4Wi0llDCEB/
	RM8bAdswR759vz03x+uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4gAe-0000000GvQR-3JCI;
	Mon, 23 Mar 2026 14:22:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4gAd-0000000GvQK-32JZ
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Mar 2026 14:22:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=y8geuoF5cnxZsGhRX8VDQUP1Hp5X4OKz0d1AP/2GTWQ=; b=K4RE8QaI9pzgfE0lqrrTVqxbHd
	+YMRGC0ahuNXCLvL32P5T/S5WGZ4BfbqYNPlWfzPRepoQG7YiaCWkZtbWXN6jTCu7l0Q1ZEvudj31
	z3mu3g93jKS6tdzBJTwDqYw6fK8rIlGeup4kfuqs1sqXZeez6C2M5qEUzNMnGWEmitQ5YmcKudsW1
	DuQ3eNl8sAAm0xIAHBPPk5s9D0yYlZ7a1M6rSY+s4TS7UgvUS+Ept8RYkwMqMg6KOW3Swiy6b4wlq
	G+WFqQ8CJ6TTjJeYbxQxTCKagJf1dE6j2zoz5cGeLRw/g7DSWHRdbDr4iOntwpMraTiwTuVkKQsPS
	+gAWGikg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4gAa-00000001iuH-0ftt
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 14:22:18 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62NDThY41176220
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 14:22:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y8geuoF5cnxZsGhRX8VDQUP1Hp5X4OKz0d1AP/2GTWQ=; b=V7m6fhkhD5tRCWik
	FgC7GqTkAB8bbjQluvuwiqeT/u6a2LjsthH0gYgHRRqtaZ3UtIO+i039dOj7ZKo0
	xABzbvJo4V5rkwS0A+evTD+kcUyYNb3qO+OE+oNh7/omq1iO40/W82uh7cC5+iBf
	wm3BraqTaz3sUxpMYpR/A++26hZkT75zpkmtBIWHX7jUIzYoofIaRO74w7/k73x7
	N4TeXKc2EwiLvlCOUPyeE7afxo7Dxdhvss6RrL9NMdrFK850JKk+CemW0rDxuuAk
	/NeCvEkQvQW9JYbqyFKsl3daMQoJuTDyfODsGgEGxZYUuMHPmzRDguEsPqaxCvRm
	t7Rv0Q==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d36f086k4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 14:22:12 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-60276d88541so430169137.2
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774275731; x=1774880531; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y8geuoF5cnxZsGhRX8VDQUP1Hp5X4OKz0d1AP/2GTWQ=;
        b=L9srUKBjoWksDrSYo2t5CkOJ+6TaIZqnIXzblKZOM4hIs0H4VKDvt2dHAs90e92boE
         pW2cJs41MexKJNGGtB1rJ1dYZnlWWX3QDWsSgG14oV4L/idLhaHmiPe0ORL0PC96wIhc
         yTbvTlcQsnJIB5Z2VCmBXa+fmR5GVVT3TNmtCBBlcpNOJyK8KKzJP/31pv9v6KxRdsYE
         LYPFR8B+j+rGXhSNfmKou//wszDNaKJLjK1ZJ+9bi5lw8h253quDO4lpW89/Y36Jyey+
         5+L8S+RMXzaIMt86HUAcqrnWjLPa61uSmYDz9fL4e5RgV/1Ds4NQj/KgnqJCMlQaSLrG
         BLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774275731; x=1774880531;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y8geuoF5cnxZsGhRX8VDQUP1Hp5X4OKz0d1AP/2GTWQ=;
        b=orEsaxQBAgUqlc6X7Ua8sNJeEEmaz/S1cwRZ/yjOMeimR/x2kEkrFuMVyj1j4kxmgN
         In08hvzkMAwQ/wDH4nwNJ+9Kv1V0o9qBdty9WVwwYyg26XXK4PGnQLSyFmNfxSXce9u6
         W9sE9AruLq0+dWkN2xa4Z4avRwUIJ0Uk9fWL8wHodtpRCdM8FrOZljnYZPZJVFMN4XYd
         EmCrnI9IlMHgU49dJVzWRP8xKUm1Cb+ZZpa8swV7sZEN4zyedebEgM2mkYg+Q4yCU7LB
         d+Pz7y2p0owNKXF1r9/UHssvac7WQ3maTJLS+rNcf1uKyLNvU3w6xDoqyIr/yUyKv7HZ
         s5yw==
X-Forwarded-Encrypted: i=1; AJvYcCV7ABEq3QtoUNaSevW4cckHC9qzx1aHwPnTvX2XL/Hr+aHkXOpPxq7JtsmJH4OYpfPR0lDPFV/Pnfo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgLmN+nTvW4urwdHezrwhC7Ld09ubssasuyEk02HL379gDQbAk
	F3WCz8s7nlUI1DGufNnzb5EzdRnAHy7sai4XsKbpFSo8v7ywrgyXGSpoXGsZIRKXg+Q8/xs2gD3
	kgpfxKaDYQsgeV/UrDEEdcvz54djwdAE6zMVLkYCP7mF8Tx8r8QE4US/CKrOHMXsIONx+
X-Gm-Gg: ATEYQzwCL1h5bdVm9VgTEjMYYLboF3s+5+F0hvdbItG8jssaKcRZ5AhAgVerP6JNada
	aLea4xHjw4TeAypr3nyPGW7e186ey7PbZUKcyxNHyDoCwIEOzeVgdMQKtFpYDtwNKW1nuI+1zMW
	LUpBXstZ3+/5BnGF3N0eQpisGvn+qNsIkYvJnbLY02nXgsgF+SzEXYXNRbCMzXALrGd1YzWJFKO
	pMxl0N7mQ0Y/m78XJzgxeohLadFlIXLQFp8/Ia2e/nOh+PwAGjC5IvBYV1kvX/63gcCbMAQ9Yks
	YIT1BtXX3vmQTLy6jym5eYDCidGHynzKtPkcJ5XMnJYJyo8q2kXte6V8sEbqST1RWfkewoA70yE
	EaQM0isGqsc/A4JMVx9/Hva60CL8bzlCQZQV5/dD0zmo/9+47d+knqBggvL0dIOAIshITZZpjBH
	jBSKE=
X-Received: by 2002:a05:6102:214b:b0:5ff:1d91:a4bd with SMTP id ada2fe7eead31-602aed25467mr2030566137.8.1774275731364;
        Mon, 23 Mar 2026 07:22:11 -0700 (PDT)
X-Received: by 2002:a05:6102:214b:b0:5ff:1d91:a4bd with SMTP id ada2fe7eead31-602aed25467mr2030548137.8.1774275730725;
        Mon, 23 Mar 2026 07:22:10 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-668cfdb4659sm3947962a12.13.2026.03.23.07.22.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2026 07:22:09 -0700 (PDT)
Message-ID: <4b1b5b79-df37-499e-99c4-1a965a9b2455@oss.qualcomm.com>
Date: Mon, 23 Mar 2026 15:22:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
 <3VqSGUgMUKaCja5WYOrOP8nJ_mw_eDPdItA8d1CvqUg4ASPS5IUc_aT2E-XIo0YmnYo8QltXVw8_6NDxtdqGGw==@protonmail.internalid>
 <5705b48a-fc24-4c5f-aa6d-40952f0070d9@oss.qualcomm.com>
 <edf766b8-2664-4dac-b626-551807b3e5ef@kernel.org>
 <4afceefe-8053-4c10-8595-39dab9379aab@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4afceefe-8053-4c10-8595-39dab9379aab@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=b+q/I9Gx c=1 sm=1 tr=0 ts=69c14c94 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=i5-LN24KizBMwyz_CxMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: E211SUps6r4-RP8i6ITHUJIpzxhdKqAP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDExMSBTYWx0ZWRfX78++NrkyvVxg
 DSKZdSzOVaNrV3mh0wHs3dOwNJzInBrt+h/tUsNKbV7+nVQjIHKPQXc7KxriE3aW1GVW5LQbw5e
 UDWGgsx4pUEpZ8ysAdjdewWtUAfpvfbp4gM3yyc3tpcDQq8AEKeaUY/QxBMmw5Luzb88y92dkwl
 P+5kyi5ijM6ZkE+TeBbwxVTkM1ZFHWuAP7J3HXwHvdRZX/D4eDHgbAlLIpeAFhw3B01Onwavca3
 EwvCghGB2n0COXfrJhk/kkySspGAOHJQuBDsvMEOAtHe69znrf5tM/73hjzZnNRWwL9IO6ezGuP
 sXaGa4JicG6ySR0Rz9/BmEd6sJ2WQxQeomRwi4ukQeu45R/3BHNKklDWJNlyAtcvvndg0PvOfhd
 +3gcOvfoOmDb3Y1/k3DKKhLo5qXE0xoYpWvQYNcee0HQpR9IRKYQjrwGpLe1WHQCE3QnEN9COWs
 t6lsUJtMZpnxUGZIA3A==
X-Proofpoint-GUID: E211SUps6r4-RP8i6ITHUJIpzxhdKqAP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_04,2026-03-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 adultscore=0
 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603230111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_142216_538495_2573959C 
X-CRM114-Status: GOOD (  24.71  )
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

T24gMy8xNy8yNiA5OjI1IFBNLCBWaWpheSBLdW1hciBUdW1hdGkgd3JvdGU6Cj4gCj4gCj4gT24g
My8xNi8yMDI2IDEwOjI2IFBNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+PiBPbiAxNi8wMy8y
MDI2IDIxOjMxLCBWaWpheSBLdW1hciBUdW1hdGkgd3JvdGU6Cj4+PiBIaSBCcnlhbiwKPj4+Cj4+
PiBPbiAzLzE1LzIwMjYgNDo1MiBQTSwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPj4+PiBBZGQg
YSBiYXNlIHNjaGVtYSBpbml0aWFsbHkgY29tcGF0aWJsZSB3aXRoIHgxZTgwMTAwIHRvIGRlc2Ny
aWJlIE1JUEkgQ1NJMgo+Pj4+IFBIWSBkZXZpY2VzLgo+Pj4+Cj4+Pj4gVGhlIGhhcmR3YXJlIGNh
biBzdXBwb3J0IGJvdGggQy1QSFkgYW5kIEQtUEhZIG1vZGVzLiBUaGUgQ1NJUEhZIGRldmljZXMK
Pj4+PiBoYXZlIHRoZWlyIG93biBwaW5vdXRzIG9uIHRoZSBTb0MgYXMgd2VsbCBhcyB0aGVpciBv
d24gaW5kaXZpZHVhbCB2b2x0YWdlCj4+Pj4gcmFpbHMuCj4+Pj4KPj4+PiBUaGUgbmVlZCB0byBt
b2RlbCB2b2x0YWdlIHJhaWxzIG9uIGEgcGVyLVBIWSBiYXNpcyBsZWFkcyB1cyB0byBkZWZpbmUK
Pj4+PiBDU0lQSFkgZGV2aWNlcyBhcyBpbmRpdmlkdWFsIG5vZGVzLgo+Pj4+Cj4+Pj4gVHdvIG5p
Y2Ugb3V0Y29tZXMgaW4gdGVybXMgb2Ygc2NoZW1hIGFuZCBEVCBhcmlzZSBmcm9tIHRoaXMgY2hh
bmdlLgo+Pj4+Cj4+Pj4gMS4gVGhlIGFiaWxpdHkgdG8gZGVmaW5lIG9uIGEgcGVyLVBIWSBiYXNp
cyB2b2x0YWdlIHJhaWxzLgo+Pj4+IDIuIFRoZSBhYmlsaXR5IHRvIHJlcXVpcmUgdGhvc2Ugdm9s
dGFnZS4KPj4+Pgo+Pj4+IFdlIGhhdmUgaGFkIGEgY29tcGxldGUgYm9kZ2UgdXBzdHJlYW0gZm9y
IHRoaXMgd2hlcmUgYSBzaW5nbGUgc2V0IG9mCj4+Pj4gdm9sdGFnZSByYWlsIGZvciBhbGwgQ1NJ
UEhZcyBoYXMgYmVlbiBidXJpZWQgaW5zaWRlIG9mIENBTVNTLgo+Pj4+Cj4+Pj4gTXVjaCBsaWtl
IHRoZSBJMkMgYnVzIHdoaWNoIGlzIGRlZGljYXRlZCB0byBDYW1lcmEgc2Vuc29ycyAtIHRoZSBD
Q0kgYnVzIGluCj4+Pj4gQ0FNU1MgcGFybGFuY2UsIHRoZSBDU0lQSFkgZGV2aWNlcyBzaG91bGQg
YmUgaW5kaXZpZHVhbGx5IG1vZGVsbGVkLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQnJ5YW4g
TydEb25vZ2h1ZSA8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+Cj4+Pj4gLS0tCj4+Pj4gwqDC
oCAuLi4vYmluZGluZ3MvcGh5L3Fjb20seDFlODAxMDAtY3NpMi1waHkueWFtbMKgwqDCoMKgwqDC
oCB8IDEzMyArKysrKysrKysgKysrKysrKysrKysrCj4+Pj4gwqDCoCAxIGZpbGUgY2hhbmdlZCwg
MTMzIGluc2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20seDFlODAxMDAtIGNzaTItcGh5LnlhbWwgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20seDFlODAxMDAtIGNzaTItcGh5
LnlhbWwKPj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4+IGluZGV4IDAwMDAwMDAwMDAwMDAu
LmI4M2MyZDY1ZWJjNmUKPj4+PiAtLS0gL2Rldi9udWxsCj4+Pj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwKPj4+
PiBAQCAtMCwwICsxLDEzMyBAQAo+Pj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BM
LTIuMCBPUiBCU0QtMi1DbGF1c2UpCj4+Pj4gKyVZQU1MIDEuMgo+Pj4+ICstLS0KPj4+PiArJGlk
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvcWNvbSx4MWU4MDEwMC1jc2kyLXBo
eS55YW1sIwo+Pj4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFz
L2NvcmUueWFtbCMKPj4+PiArCj4+Pj4gK3RpdGxlOiBRdWFsY29tbSBDU0kyIFBIWQo+Pj4+ICsK
Pj4+PiArbWFpbnRhaW5lcnM6Cj4+Pj4gK8KgIC0gQnJ5YW4gTydEb25vZ2h1ZSA8Ym9kQGtlcm5l
bC5vcmc+Cj4+Pj4gKwo+Pj4+ICtkZXNjcmlwdGlvbjoKPj4+PiArwqAgUXVhbGNvbW0gTUlQSSBD
U0kyIEMtUEhZL0QtUEhZIGNvbWJpbmF0aW9uIFBIWS4gQ29ubmVjdHMgTUlQSSBDU0kyIHNlbnNv
cnMKPj4+PiArwqAgdG8gUXVhbGNvbW0ncyBDYW1lcmEgQ1NJIERlY29kZXIuIFRoZSBQSFkgc3Vw
cG9ydHMgYm90aCBDLVBIWSBhbmQgRC1QSFkKPj4+PiArwqAgbW9kZXMuCj4+Pj4gKwo+Pj4+ICtw
cm9wZXJ0aWVzOgo+Pj4+ICvCoCBjb21wYXRpYmxlOgo+Pj4+ICvCoMKgwqAgY29uc3Q6IHFjb20s
eDFlODAxMDAtY3NpMi1waHkKPj4+PiArCj4+Pj4gK8KgIHJlZzoKPj4+PiArwqDCoMKgIG1heEl0
ZW1zOiAxCj4+Pj4gKwo+Pj4+ICvCoCAiI3BoeS1jZWxscyI6Cj4+Pj4gK8KgwqDCoCBjb25zdDog
MQo+Pj4+ICsKPj4+PiArwqAgY2xvY2tzOgo+Pj4+ICvCoMKgwqAgbWF4SXRlbXM6IDQKPj4+PiAr
Cj4+Pj4gK8KgIGNsb2NrLW5hbWVzOgo+Pj4+ICvCoMKgwqAgaXRlbXM6Cj4+Pj4gK8KgwqDCoMKg
wqAgLSBjb25zdDogY3NpcGh5Cj4+Pj4gK8KgwqDCoMKgwqAgLSBjb25zdDogY3NpcGh5X3RpbWVy
Cj4+Pj4gK8KgwqDCoMKgwqAgLSBjb25zdDogY2Ftbm9jX2F4aQo+Pj4+ICvCoMKgwqDCoMKgIC0g
Y29uc3Q6IGNwYXNfYWhiCj4+Pj4gKwo+Pj4+ICvCoCBpbnRlcnJ1cHRzOgo+Pj4+ICvCoMKgwqAg
bWF4SXRlbXM6IDEKPj4+PiArCj4+Pj4gK8KgIG9wZXJhdGluZy1wb2ludHMtdjI6Cj4+Pj4gK8Kg
wqDCoCBtYXhJdGVtczogMQo+Pj4+ICsKPj4+PiArwqAgcG93ZXItZG9tYWluczoKPj4+PiArwqDC
oMKgIGl0ZW1zOgo+Pj4+ICvCoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IFRJVEFOIFRPUCBHRFND
Cj4+Pj4gK8KgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogTVhDIG9yIE1YQSB2b2x0YWdlIHJhaWwK
Pj4+IFdvdWxkIGl0IGJlIGJldHRlciB0byBwcm92aXNpb24gTVhBIG9yIE1YQyBhcyBhbiBhZGRp
dGlvbmFsIG9wdGlvbmFsCj4+PiBwb3dlciBkb21haW4/IEkgc2VlICdjYW1fY2NfY3BoeV9yeF9j
bGtfc3JjJywgdGhlIHBhcmVudCBvZiBhbGwgQ1NJUEhZeAo+Pj4gY2xvY2tzLCBuZWVkIGFsbCB0
aHJlZSBwb3dlciBkb21haW5zIG9uIHRoaXMgY2hpcHNldC4KPj4KPj4gSSBkb24ndCB0aGluayB0
aGlzIHNob3VsZCBiZSBvcHRpb25hbC4gSGF2ZSB0aGUgZHRzIHBvaW50IHRvIGFuICJteCIgcG93
ZXItZG9tYWluIGFuZCB0aGVuIHNlbGVjdCB3aGljaCBvbmUgaXMgcmlnaHQgZm9yIGEgUEhZIE1Y
L01YQSBvciBNWEMuCj4+Cj4+IFlvdXIgd29yc3QgY2FzZSBoZXJlIGlzIHNvbWUgZnV0dXJlIFBI
WSB3aGljaCBoYXMgbW9yZSBvciBmZXdlciBQRHMgd2hpY2ggaXMgdGhlbiBlaXRoZXIgYSBzcGVj
aWFsIGNhc2UgaW4gdGhpcyBmaWxlIG9yIGEgd2hvbGUgbmV3IGZpbGUgZm9yIHRoYXQgY29tcGF0
Lgo+Pgo+IEkgdGhpbmsgaXQgaXMgdGhlIGNhc2Ugb24geDFlKiBhcyB3ZWxsLCBCcnlhbi4KPj4+
PiArwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBNTUNYIHZvbHRhZ2UgcmFpbAo+Pj4+ICsKPj4+
PiArwqAgcG93ZXItZG9tYWluLW5hbWVzOgo+Pj4+ICvCoMKgwqAgaXRlbXM6Cj4+Pj4gK8KgwqDC
oMKgwqAgLSBjb25zdDogdG9wCj4+Pj4gK8KgwqDCoMKgwqAgLSBjb25zdDogbXgKPj4+PiArwqDC
oMKgwqDCoCAtIGNvbnN0OiBtbWN4Cj4+Pj4gKwo+Pj4+ICvCoCB2ZGRhLTBwOC1zdXBwbHk6Cj4+
Pj4gK8KgwqDCoCBkZXNjcmlwdGlvbjogUGhhbmRsZSB0byBhIDAuOFYgcmVndWxhdG9yIHN1cHBs
eSB0byBhIFBIWS4KPj4+PiArCj4+Pj4gK8KgIHZkZGEtMXAyLXN1cHBseToKPj4+PiArwqDCoMKg
IGRlc2NyaXB0aW9uOiBQaGFuZGxlIHRvIDEuMlYgcmVndWxhdG9yIHN1cHBseSB0byBhIFBIWS4K
Pj4+PiArCj4+Pj4gK3JlcXVpcmVkOgo+Pj4+ICvCoCAtIGNvbXBhdGlibGUKPj4+PiArwqAgLSBy
ZWcKPj4+PiArwqAgLSAiI3BoeS1jZWxscyIKPj4+PiArwqAgLSBjbG9ja3MKPj4+PiArwqAgLSBj
bG9jay1uYW1lcwo+Pj4+ICvCoCAtIGludGVycnVwdHMKPj4+PiArwqAgLSBvcGVyYXRpbmctcG9p
bnRzLXYyCj4+Pj4gK8KgIC0gcG93ZXItZG9tYWlucwo+Pj4+ICvCoCAtIHBvd2VyLWRvbWFpbi1u
YW1lcwo+Pj4+ICvCoCAtIHZkZGEtMHA4LXN1cHBseQo+Pj4+ICvCoCAtIHZkZGEtMXAyLXN1cHBs
eQo+Pj4+ICsKPj4+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4+Pj4gKwo+Pj4+ICtl
eGFtcGxlczoKPj4+PiArwqAgLSB8Cj4+Pj4gK8KgwqDCoCAjaW5jbHVkZSA8ZHQtYmluZGluZ3Mv
aW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+Pj4+ICvCoMKgwqAgI2luY2x1ZGUgPGR0
LWJpbmRpbmdzL2Nsb2NrL3Fjb20seDFlODAxMDAtY2FtY2MuaD4KPj4+PiArwqDCoMKgICNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9jbG9jay9xY29tLHgxZTgwMTAwLWdjYy5oPgo+Pj4+ICvCoMKgwqAg
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHkuaD4KPj4+PiArwqDCoMKgICNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9wb3dlci9xY29tLHJwbWhwZC5oPgo+Pj4+ICsKPj4+PiArwqDCoMKgIGNzaXBo
eUBhY2U0MDAwIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJxY29tLHgxZTgw
MTAwLWNzaTItcGh5IjsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MGFjZTQwMDAgMHgy
MDAwPjsKPj4+PiArwqDCoMKgwqDCoMKgwqAgI3BoeS1jZWxscyA9IDwxPjsKPj4+PiArCj4+Pj4g
K8KgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmY2FtY2MgQ0FNX0NDX0NTSVBIWTBfQ0xLPiwKPj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfQ1NJMFBI
WVRJTUVSX0NMSz4sCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY2Ft
Y2MgQ0FNX0NDX0NBTU5PQ19BWElfUlRfQ0xLPiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPCZjYW1jYyBDQU1fQ0NfQ1BBU19BSEJfQ0xLPjsKPj4+PiArwqDCoMKgwqDC
oMKgwqAgY2xvY2stbmFtZXMgPSAiY3NpcGh5IiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICJjc2lwaHlfdGltZXIiLAo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImNhbW5vY19heGkiLAo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImNwYXNfYWhiIjsKPj4+IEFsdGhv
dWdoIGl0J3Mgbm90IGEgY29uY2VybiBmcm9tIG15IHNpZGUsIGp1c3Qgd2FudCB0byBiZSBleHBs
aWNpdGx5Cj4+PiBzdXJlIHRoYXQgZXZlcnlvbmUgaXMgaGFwcHkgd2l0aCB0aGUgY2xvY2sgbmFt
ZXMsIGp1c3QgdG8gYXZvaWQgYW55Cj4+PiBjaGFuZ2VzIGxhdGVyIG9uIHdoZW4gb3RoZXIgbW9k
dWxlcyBhcmUgc2VwYXJhdGVkIG91dC4KPj4KPj4gVGhlc2UgYXJlIHRoZSBuYW1lcyB3ZSBhbHJl
YWR5IHVzZSBpbiBDQU1TUyBzbyAuLi4gdGhleSdyZSBnb29kIGVub3VnaCB0byBzdGFydCBmcm9t
Lgo+Pgo+IFN1cmUsIEZZSTogRG1pdHJ5LCBLb25yYWQuCgpJJ2xsIGFkbWl0IEkgaGF2ZW4ndCB5
ZXQgcmVhZCB1cCBvbiBhbGwgb2YgdGhlIGJhY2tncm91bmQgZGlzY3Vzc2lvbnMgdGhhdCB5b3UK
Z3V5cyBoYWQgb24gTEtNTCwgYnV0ICppZiogd2UncmUgZ29pbmcgdG8gcHV0IHRoZSBQSFkgdW5k
ZXIgY2Ftc3MsIHRoZSBHRFNDIGFuZApDUEFTX0FIQi9DQU1OT0NfQVhJX1JUIHJlZmVyZW5jZXMg
c2hvdWxkIGJlIHVubmVjZXNzYXJ5LCBnaXZlbiB0aGV5J3JlIG5vdApyZWxhdGVkIHN0cmljdGx5
IHRvIHRoaXMgUEhZIGl0c2VsZiwgcmF0aGVyIGl0IHNpdHRpbmcgaW4gYSBzcGVjaWZpYyBjb3Ju
ZXIgb2YKdGhlIHN1YnN5c3RlbSB0aGF0IG5lZWRzIHRoZW0gdG8gYmUgYWN0aXZlIChzZWUgcmVs
YXRlZDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLW1zbS9jYjI0MzBmMi04NjAx
LTRjNzItYWY2Yi0xMGYxZmYxNmMxODhAb3NzLnF1YWxjb21tLmNvbS8KKQoKRm9yIHRoZSBvdGhl
ciBuYW1lcywgSSAqdGhpbmsqIHdlIHdvbid0IG5lZWQgdG8gcmVseSBvbiB0aGVtIChpLmUuIG9u
bHkgb3BlcmF0ZQp0aGUgcmVzb3VyY2VzIHRocm91Z2ggUEhZIEFQSXMgZnJvbSB0aGUgVjRMMiBk
cml2ZXIpIGFuZCBjYW4gY29tZSB1cCB3aXRoIG5ldwpvbmVzLiBBbmQgaGVuY2UgSSB0aGluayB3
ZSBjYW4gdHVybiAiY3NpcGh5IiB0byAiY29yZSIgYW5kICJjc2lwaHlfdGltZXIiIHRvCiJ0aW1l
ciIgKGJlY2F1c2Ugd2UgcmVhbGx5IGRvbid0IG5lZWQgdG8gcmVwZWF0IHRoZSBjc2lwaHlfIHBy
ZWZpeCkKCktvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
