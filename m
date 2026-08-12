Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AC44C5AD5A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 10:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0R3r1j+/KbBV2F/Zode4c4oNR/jsCZgtEmQdFWQPG4=; b=SbOTB6mGo0RWtv
	xFoGQBzNeS4VUZZI8VSuVjbtRlEsD9RAtqQ/90ENsZDehiF9J+8lZO0KqzD9AW2hkc7ekFG1S0gF4
	HGTYVD2FKVliswWKd9L3Act9X2Jhw2CQfagpMzaRaRc085jWsZpDEYqDErLRQddtGfDyLd2K2lDtn
	fGKrK9NMk+GB2z8QM/nDU5QT9k63akRyzDC+ZJFOWybRPkcTSw2IA5qXm4NNg5g5UU/OpX7x07bMu
	84CXORSF7O2Tp+BftoM2LHABxxAjeZFRAf+KwQ45Cp+UgA3Z8YynxRa8Tul3YloTCst4kFGgvFjl0
	7GNn0fHx3EBEApl2uVRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6Av-0000000FtOQ-3JLC;
	Wed, 12 Aug 2026 10:27:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6As-0000000FtO3-49vy
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 10:27:08 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67C9ftZa3357806
	for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 10:27:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1/y4ILfqQT6FHvqHpmsSVfBp
	bakwfT0CniCQEUEhWNc=; b=EN0HUuB7r+9MMvSSDM4e5fKAk87QZT00qrWux6lo
	DR1NLGu40/5WFLUEQ5DleymJfZic1B3tlkrwP3j8xYb/I+5R+DdLSxYc8J7+O+rx
	VNT4C7Hvh7SVdPnwuSc5FFVARW0ZkxNoqAINUiEmZoWqkDSEdB0KcwqGirOzEzZ0
	Cnanef1g8iR+W4cvmqionoabENEeHe78XJEFbj3MScv3hcFG1NdoMStyoxJjWZmJ
	jdWFTmNGLPUwYtd+ic3wiqhg2Rk0I1pi48PVc6KKfWhmAhmskjHcat4kbWUFhEc3
	U850RzBeq82StzX89su4EJpEpEHJTAqTCHG2phw21CjA6w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g0hj1hc3p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 10:27:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-52827090cc5so9630651cf.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 03:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786530425; x=1787135225; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1/y4ILfqQT6FHvqHpmsSVfBpbakwfT0CniCQEUEhWNc=;
        b=T+MFnP2KZyML7NGiGE//lHHDG+mLM0dNvnasbTdProk46lNYMM1m8mKvUfTy+S/dwC
         54WPeufe+4ho12Cu0BcrGnwIEINd6n9kgUSAibWVebNdtc/qH5n7OQJzAqq8NojXtAf2
         wNvwjNPAoL91Otk4PaCld/W/h/TlU4O8LlVV43OeOeaAutpwIZnkHgkBBHmdxNH1tU0b
         9aPMRY/8BYVFkOkIhA/cV8M32wT5K8IxoXOSwu8t/+vnmmybd591WzoZKQ6gmJPtqNc0
         4TSycVTIwgS2go3T10h+U7SM0IetLfM07xVb+X2oYINbHfwlBLHzVzrm0M/5taEe/eqE
         rRpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786530425; x=1787135225;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1/y4ILfqQT6FHvqHpmsSVfBpbakwfT0CniCQEUEhWNc=;
        b=NXxb4YUkWfQakbJeR/iS4VWgeNecge5bLy1AyKb3qjWpaO/5ZH/l56Hb1vmy9iM/jx
         ewGZFdDI2o94R5sRfv7/Oy/bC4EH/Ed/h89eATq+2zG3evdhsOT6YKmChe5WAPLLKQsk
         4eLqx3Ww04NV8ikwscXoRkhR43aKWaYWZmvPDdiAsQNo2ICkD/CAxo65A7xDD4OQ4oWp
         QhBhBuJJiqucuzGeMTeBmnC9gcXi8FlJVpZLb6JDIJ6ruyW6zITzr1DvDu8OihBVtcod
         h+/5yqxaAv73P2TNrJsewX8xtXZ1BJl+JZbUaR7zbyGex1OxjtU+Q/Qb7pAOZXc+mLwz
         db5A==
X-Forwarded-Encrypted: i=1; AHgh+RqVmXH6Vw6ylMvxDRmMYXoun8wih1IMiUtABxlEE54eNA5aoZQdRUcrT548B8LpGl6q7mO7+HwMRW4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxGTaLSsMdWdGydT25A7bdPv7JbycCxKyrUXndIDaXmH7BajTG6
	X0s76NU3NQQ8AcVFsLTT64lV0Lg7vTLLn70pxVEKJou0FmZm80HFGJAwvZxfuS86atdkX0kfdxN
	8khsPwEZ7PQ+uqBNx0LtOkAFOftE6wFiHjPuWv9OhKHsNsNusem6wlA826/eDEDEeZ3mx
X-Gm-Gg: AR+sD13Ii3Jifu07R9g1ElOu2CBINVyI2Apl0DgUvfmnl3BIzH7IjpUWOGeTiyCmB++
	2pnZuuWz6k39B6ug0g/KhfMrx5pyiWoRIO71bT8BbU14Ltq32ezVIlyTEPlrso56r3FMYbRBayZ
	mvr1X9FUNH0Tv4r8koiOqZBlNQtdkVTijh0fMw5NMWfu/+/oBhhRAfbzR3sERgNFQPGLc0hOIVp
	P05hHaHxoql8cUaEA2ptwGeo1BhsVUMJ+ugvNRF6buqUVFMg+Y1uuQVOdLs3MkmW1TJ21Pixi62
	t4CLcZ5FZkmBL10E4gI/JAhLTUk7imqBXtZLmUSJNvDAwptAKrRBMqCHEiB0/+ofb6X2ehNPXVi
	ysv3+fkepvyP73s0=
X-Received: by 2002:a05:622a:1825:b0:528:38b1:b550 with SMTP id d75a77b69052e-52d6030d315mr59918001cf.16.1786530424551;
        Wed, 12 Aug 2026 03:27:04 -0700 (PDT)
X-Received: by 2002:a05:622a:1825:b0:528:38b1:b550 with SMTP id d75a77b69052e-52d6030d315mr59917601cf.16.1786530424037;
        Wed, 12 Aug 2026 03:27:04 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.149])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4997aa3ebe0sm70833055e9.0.2026.08.12.03.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2026 03:27:03 -0700 (PDT)
Date: Wed, 12 Aug 2026 13:27:01 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/5] phy: qualcomm: qmp-combo: Add preliminary USB4
 support
Message-ID: <ge3ufdl2dwvl3tff77dqmkbcddp7zepvves7uqyyuxkiqsewfe@nftn252kk5zt>
References: <20260730-topic-usb4phy-v3-0-ccf0f7ea98b5@oss.qualcomm.com>
 <20260730-topic-usb4phy-v3-3-ccf0f7ea98b5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260730-topic-usb4phy-v3-3-ccf0f7ea98b5@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: elyVfAVB7CGUaOdwZVN_D2VrUYng6ddo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEyMDA4NCBTYWx0ZWRfX07B7SvLhRG2F
 JHfbVIdRM8IVc1CER9Q+DI6NW0Q3jVLZbuUugjqEF2I2J0GhcHu1bfDszrIhvuFDjuSpKc4xAhG
 vVpY3UarTteuq85p3dbsViKwx8A0HcXlHtdK7cFcZ4redy9r2TGgYZ5C8ANu0AtU0jH0PNMTbpZ
 hLsDq8zaKvMo8ro9DiOkDpYtI4La68ZLM1l+V4KLDen/R4s1mSLOjFjDUrYBACEC8Y8vaDAZmo0
 pvl3oVW1F44xTbvC2+ui9DZY9Xq9S6pgLkjYMnzUt1RmOGUGR22vsDkLeV2BgyuRcL4567PEp7J
 Tap6mTHF42IbFOVB0Z6HvsH2Qp+St+YydUpbPLJl1bVO5MXGdCuzv/rkIhPonN3fIQnBC5IjA5E
 SO+buIuG3L0Eci5y+WAwkTAbPYZzP5vRk5d4sYHJxSDN7vSYb6BIJvelZ0hJCARr3/qKW/vDj1S
 HPAnWfm7t0pnYR4QVdA==
X-Authority-Analysis: v=2.4 cv=K6ES2SWI c=1 sm=1 tr=0 ts=6a7c4a79 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=o07dIpAjZdj6OISZKn0kaw==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=gEJiVQBakSoUq9HfEjsA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: elyVfAVB7CGUaOdwZVN_D2VrUYng6ddo
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEyMDA4NCBTYWx0ZWRfX+c2HKLdaT+B7
 xO6iW9mFcH7dH4Ef0DDSJqcCWhiairzldTtuXnsBc+6seTbUpHRuFmzA5ef4KmzaFhSsU4shuFq
 I7/XZbhupkHuxAhGct2xqDnCyAmKvMY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-12_03,2026-08-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608120084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_032707_176132_C0F5E30F 
X-CRM114-Status: GOOD (  18.03  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 26-07-30 16:19:15, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
> a flavor called USB43DP, which as the name implies, features USB4, USB3
> and DP signal processing capabilities. In that architecture, USB3 and
> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
> The DP part is roughly the same as on the instances without USB4.
> 
> The USB4 and USB3/DP operation modes of the PHY are mutually exclusive.
> Only one USB protocol (and flavor of pipe clock) can be active at a
> given moment (not to be confused with USB3 not being able to be
> tunneled as USB4 packets - that of course remains possible).
> The DP PLL is still used for clocking tunneled DP links. It may be
> turned off to save power when no tunnels are active, but that's left as
> a TODO item for now.
> 
> Due to the nature of USB4, the Type-C handling happens entirely inside
> the Host Router, and as such the QMPPHY's mux_set() function is
> nullified for the period when USB4 PHY remains active. This is strictly
> necessary, as the Host Router driver is going to excercise manual
> control over the USB4 PHY's power state, which is needed by the suspend
> and resume flows. Failure to control that synchronously with other
> parts of the code results in a SoC crash by unlocked access.
> 
> Because of that, a new struct phy is spawned to expose the USB4 mode,
> along with a .set_mode callback to allow toggling between USB4 and TBT3
> submodes.
> 
> Thunderbolt 3, having a number of differences vs USB4, requires a
> couple specific overrides, pertaining to electrical characteristics,
> which are easily accommodated for.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
