Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A13606A31C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 14:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=A9vr0tr0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Vt1B19sW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=e9npgaZH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=V7qCQBeO94H3Hm9xXvLc9SY1rJucCgIeiO8PixolUDQ=; b=A9vr0tr0A5BnsOOe0bB5A+F+iQ
	LlMhmEveh35YSWo1xeT1b0MWWyWBtpWsXmxCP85Z8H7ZwkBj/m7A0XsHgfzo5o1YVP1MIv8a6WXU7
	7+8We6XPpVVfNZ55btw5hfMbCXBUp9X4v6EAGYyxeOJ34jE/l0J82vuNS3Dg1F5Ws+xXW8OqYooog
	jwcqA+tthArK6Bqm12+4TUD1erPONSUhSXli/G70ink/gYC4WkAynPTO4KvKdUoX3I75sS15rXmJd
	zsPS7QoJX3pm/lMTvcQ/SD6fERLU5I/mf65G1SZwHQpxKHutHC6Z1HK/yS7kq0dkhDnrmVw8hAQct
	6WxgiI6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWaGP-0000000DW6p-4994;
	Thu, 26 Nov 2026 14:15:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWaGI-0000000DW4Q-1LIo
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 14:15:49 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQBVIPj3476078
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 14:15:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LVzLW1gzyeQ6HMEDoCweQ+7lKqZtcED3bCw7TBJO0f8=; b=Vt1B19sWIBBA4mMW
	vnVJHGWXmelLmC7j9BsDV0rHCG1XZiAo9Mjc8NNfGKQRkudTdyJaFO6fQEW5Kq/p
	UFigf+BLWjKt87EiEaq8w05xNwSUUKucQ2jBzkU8CtxyRb7GzUk0Df4blpTzWoKk
	iXwfaRxxE6jIng6Ii+ZLk1pGMzXdC9qhRN7nbgAhexaDMTRT1ydU70V+aAjxEcJu
	LXSOiQ5MS5xLN2D3xMBelA4kdTXDaQK2y/hCB26gmUW9WokQivphwXqJMXr0cui3
	gheHH4YotDyfMyuEisLUnjLqqljhA6DBgdJktjmikGhgwla55DI/iLiGvLeMaf+/
	4Pu3gQ==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6f8rhr1j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 14:15:45 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-67c1c64551bso10112534d50.2
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 06:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795702545; x=1796307345; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=LVzLW1gzyeQ6HMEDoCweQ+7lKqZtcED3bCw7TBJO0f8=;
        b=e9npgaZH2wIy2xVI7RAuVXMR0c3cymVAOXBVtuBn9h5VHsjBL2RYPczQlj5DB/Y1js
         sLs5YqvF+xmugwp3YDnupiC++qHotNFu0MKDKs6dd+TY7p0V+GXBxh1dR84TOLRjeKRr
         p//lg7WsXGow0mx90MoTz2o4USopVppR1tzCtFD04bc1TKhZXC844X07gSOZe2eOn4Wl
         BpNwCIwYmjv3XkMTvFWuVpDyhPtXTxwZtfn+x2/JvPINYbHXX2UIN7+uqmHo0zbPIIvE
         9SyFuyt2Dmbrk1CfvWJFto/S4e+9erXFyWoM+Qe5tPrLiAxikOAOkep5mdpVoXdpDO0E
         zd6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795702545; x=1796307345;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LVzLW1gzyeQ6HMEDoCweQ+7lKqZtcED3bCw7TBJO0f8=;
        b=fzjC3UeicWwwoF9F2ZW2v85u7PDev+0uU29lTn4Y6GCzpgzvVpd1fClINPgSaXwlqa
         q4FSsVPYhNSvWVtABiHw3RKYH3tgoT4pViCf0ORqfxKfz4Onge7nPVg5Z50YnRHzXG2C
         2toakGOoaOOc+u5CusZwUIjKyQuTKIBZI40pF+9FfnXJFAZ5Hs+lXpuLibBTx0vF/XDC
         Z+C4jUPt0vR2w6KXjwAW1JOnHJ/7zWcUmS8Nf9KO5eL7uLicia5TaFw3p6cQ7LAGluvv
         I3oJX/Coi0rQm1dZSKvYazD75CEOqOynRF6yavjYtnrUKQ9uiAgfS48tnGbfCwo+oJhB
         r6vA==
X-Forwarded-Encrypted: i=1; AL+hErGvVscbjsAzm4dyixHO4ifYuQZ7Lic+6Jd9JTZAkzY3QOXXKKEhU1wIayXJl+piBR6kmME/mTzuSY0=@lists.infradead.org
X-Gm-Message-State: APuU4Z/+8elKYiFHCy5cgpEScOw1MQQLxPKP8/sSl/VP2RyF04XLmgXd
	XK1NT3v1AtuIp/7g70PPZA2AlN0fr/8m7r4V7V1YVDUWVTM78n9EdufvId5waX5QCR/imurvkVO
	ZbvZgo2nP0cuPBfWmjKiWErOLgdRK4hT/+HVJ9F0ak0KNrl9SLq64lGco5r+Wze2+YEdB
X-Gm-Gg: AZFdTZeUFFKcJvU4UiihPCGyoRZBTas/xRezToLp+DbYnKdPXxmowudst09fsqN/lHj
	ffILcPOD6ZpqsO4jh+U6sP5Up/yAftFY1VMHj8az2/RmzYI62e6Jo8CzvIhWNCO4Rm6aR+SpbiP
	YgnwS56Lz3NyozfKD37hmI/2/02zvxBZ1EZRURL5ALaki6YsLuKS10X2cJ1Q4AvqZi1uwVP1IpX
	JKmZ3g1cJuDcuM8vj2QOW44PLGu+D+Vy4G2RKUA8uKGvGK2WpRNpEvW+GIW3ljPAC0N8GWCZ/ns
	nlWfGRdhkKk+V/WFVoLh9AVVFJ6a0OKG51PRfVxvmSHSP0xFschc19WGR7zcHRJXwrGajuAgc+b
	u6s7TC/VdWWfgvPZO/kQwRYFNi2s6sUSdmuzsyXigellJCNKQ8Kpcme8AZLk7YgJ2a6fDoB/rFJ
	Pndvzes/vs2xl4sIiPenJOiJZapwE8dRG7aKECDBEalzpfK8U/K+HhqPpfifpoDA==
X-Received: by 2002:a05:690e:4004:b0:67d:bedd:494e with SMTP id 956f58d0204a3-67df40be117mr12076968d50.0.1795702544972;
        Thu, 26 Nov 2026 06:15:44 -0800 (PST)
X-Received: by 2002:a05:690e:4004:b0:67d:bedd:494e with SMTP id 956f58d0204a3-67df40be117mr12076951d50.0.1795702544570;
        Thu, 26 Nov 2026 06:15:44 -0800 (PST)
Received: from brgl-qcom.home (2a01cb1d00dc7e0089167b9b97a26c96.ipv6.abo.wanadoo.fr. [2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6ae2dd55sm39706018f8f.30.2026.11.26.06.15.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 06:15:43 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Vinod Koul <vkoul@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>,
        Stefan Wahren <wahrenst@gmx.net>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vincent Mailhol <mailhol@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
        Manivannan Sadhasivam <mani@kernel.org>, devicetree@vger.kernel.org,
        imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-gpio@vger.kernel.org, linux-can@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH V2 0/6] ARM: mxs: add EVAchargeSE board support
Date: Thu, 26 Nov 2026 15:15:41 +0100
Message-ID: <179570253918.23340.11898101233717977206.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261112130506.12823-1-wahrenst@gmx.net>
References: <20261112130506.12823-1-wahrenst@gmx.net>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA1NSBTYWx0ZWRfX9iPj9ILjvzl3
 0aPmVoXdh9oggOlCRNxI2IP6U63mGkqRuepp/w0McpGG/thi0BOLrjZr+/DnfCn02d/LRJJRKN6
 7kBLyrVG3Wush/XtC8i43+4hjDlIPE42IhWLsqapZz/ApNzMUe3lANTvvALQA47DusOBl8yfOB8
 eCxNwsd5DRUISH91H8n9wC79ZLejuJ1lm880uJ9zJT7wAXZe/uYBtenM/byS8w0a2X2QD8YN+mM
 AozhZQW2VgEfSRhnIxnD8wYtFf1XZLxZSl5JBeTK2r3GDa+IDvxuP/rD1+rVyMiVmB2ZMbgmXr0
 nMrYgt2RdXwzS4LwmgipGPRDmD6UaFjzmv3UTEqZo9mbGersukgNfogHKKCXbWHhxBUK55IGBtR
 0hQn/fsksKedYYHqczrv0rcJVQ69k71F9g+lE0XPOTb5g2e516WrhrL0hExvZqQQRqnIZ46mD/f
 kO+jDnLtPAtQlGaSsJw==
X-Proofpoint-GUID: kUC91zRAlRKNQwS7-NWAUqBYpxhIjb81
X-Proofpoint-ORIG-GUID: kUC91zRAlRKNQwS7-NWAUqBYpxhIjb81
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA1NSBTYWx0ZWRfXyWbyhNnwJRfD
 xjI3XmC0DnhlN/34Meee8XNl0s8OGQFzAfhjpqjGLJ6CEup+h4FM2tnDppJYbxSpuDu+TA2vP7K
 Zqfmnk73Ximpu4+9yUrRI9nGTuzG+h8=
X-Authority-Analysis: v=2.4 cv=FuOQbGrq c=1 sm=1 tr=0 ts=6b083f11 cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=WIf87rlHEhZ3lBRYjGYA:9 a=QEXdDO2ut3YA:10
 a=uujmmnXaIg8lM0-o0HFK:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_03,2026-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 malwarescore=0 adultscore=0
 suspectscore=0 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_061547_982525_38443841 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -1.5 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Thu, 12 Nov 2026 14:04:59 +0100, Stefan Wahren wrote:
> This series adds support for the chargebyte EVAcharge SE, which is a
> ISO 15118 compliant controller for electric vehicle & charging stations.
> 
> Changes in V2:
> - add Krzysztof's Acked-by to Patches 1-3
> - align writing of EVAcharge SE (reported by sashiko)
> - add "dts:" to subject of Patch 5 (reported by Andrew)
> - add PHY ID of LAN8720Ai (reported by sashiko)
> - move enet_out clock to MAC node as in imx28-btt3.dtsi
> - adjust IRQ type of PHY (reported by Andrew)
> - add new patch to enable EVAcharge SE peripherals in mxs_defconfig
> 
> [...]

Applied, thanks!

[3/6] dt-bindings: gpio: mxs: Allow gpio-line-names to be set
      https://git.kernel.org/brgl/c/0a74985977e851196d69e5364f4787adb03a5fb5

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
