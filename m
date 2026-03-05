Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06CFFF47CC5
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 19:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/As7fu+/2xrFNtRv5QJ6cEVyBI1PVgUZl7h0vHS4RHw=; b=P1SBpAeLDQxmlX
	HhbYK4oqLqANOnR14up26iMERHkD+DqH9wJ9wUCWNqUxvKVnTxwUAh625tXC3RxWbGwxcNGTSjA1n
	ik5hYMQz5i/RDpVyzh5cZAm3QHB2PoMCLAqlsZpaf6ZaM8xuLNgNn6mriGsoxbqLLe0+hlaof2/lZ
	NC2umWF/nbRwhBN5R4bnqAD+5oLFMMy6hUYd04jJxkEek1FEl/1qAXazfIb1EHTnfYIrEexMGJuMx
	cS68c1OrYT6ZBPEGgopN8YZyOJoLlTNglSm5guKx1yZaaXf2GU+xUVvfFl81cPuH5nJaxXAw7JMTx
	/6XBXkugMNplhR4cFavQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyEgY-00000002Tb7-1WQh;
	Thu, 05 Mar 2026 19:48:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyEgV-00000002Ta7-1mY2
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 19:48:36 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625IqD2d4043726
	for <linux-phy@lists.infradead.org>; Thu, 5 Mar 2026 19:48:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=brQJvLzGSg1FNHbunEnKNL87
	CiKohImsgvm9vmEVnZc=; b=HWRqKTXJDv9CRYuHW6AkxIrJUi7AT0CwdvxIMPMZ
	yAhmVgLfj0z5w+OFNPRT0xQisHx8Yt3UK/+vQxGxX5KP0P7CzKR7LFaCi/rUII9E
	9pgY+Av8R1//h3p6JXQZj+ry8vPl946OxRAVDnma8KigEffmCR1PpKOuMqu1T28p
	PDg1SVQxMnlvDrEdfw3p/0bXfrH9+XV18D9NCZnVbdDjMqzfBfx0JOOtMfYUYNd+
	as/StFXtjiEoONus6618GPgkciGX4LRf1N72Ec4j5X62GOxVZeGIPef4w3N1Vffs
	I0UYBAAOnW8v1wuRjJhwoVBQnLipRjXuOisw+AGegYL+hg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqfg68604-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 19:48:34 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-358e425c261so7503079a91.3
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 11:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772740114; x=1773344914; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=brQJvLzGSg1FNHbunEnKNL87CiKohImsgvm9vmEVnZc=;
        b=JFOdNWYtHUzCZbytGeMVNxS+s7m/5CKHntYBpO3kguU4uhAoYajFTEaQxM/GoinzFD
         Ge141t7DrZNDWfTCWXNGqELm/fgpBhB9VJ4XAzC0pjARpsnlXNx8Elcn7U6baNdzKeS/
         SPSjTOEQqEw/gdqMuAVmi7/UhyjOKLonRAlLa+RUVaidYwG/HWmh29hxbw5TYKEGTyVC
         bTZLQWFjboy0yUVLkdn3KS4k2Twn9QBCMsnsN+9X++VnDPXRTayhDvi+L1Bze9XaPeJa
         N3CoYg2i7TKIE6Gu8q6bkz2GoFzAm926avgBIIUKKQmVsDboZT5YSBT/dJt3Y+BG9i4g
         f/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772740114; x=1773344914;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=brQJvLzGSg1FNHbunEnKNL87CiKohImsgvm9vmEVnZc=;
        b=aV9T3D9T5HS/ORst9Z6c41USccIgCeePHjqQau8W294uDtVgnBEKZrT6bdUto00DiG
         ZgcPSwb/+SanRiQf6h/qo7hNJtObY5DKGkMrC82ZPyqOtu8PZqarx4TySFEpOrCalF0t
         Jf6y4LGKL27wqFJbu6ziYFUIzkxLSSqQFWbiZozCcT9iC7OkwyXJQlHU8JDdb6nZNzNh
         rW6vcSHbZtN+YLybKFUVrsNOuapIJryYc4TGypjDspZqVfnuu0xOwdUg3n2n5rbtUWKX
         JXN5mAIRRohis4LcPxJJdYSV/pf8ovWbpTpRKecNjLfAo7yl1tJpupNXYcAtN4iRB/1+
         ts0g==
X-Forwarded-Encrypted: i=1; AJvYcCUkNipY6MiR/XQ65hMxyb4X01ZuLLx9JvfgRdFkhbOFX6UpwCel2vz2/3lhJKorPyaOHwq40P6TleA=@lists.infradead.org
X-Gm-Message-State: AOJu0YykoEr4WF3GlENGdEzFbSnbr1GpGS0zXH/D1zUFt/KEpDx5KnW7
	MGM/+FUlHcgxJiBlZCb80xJ2OJwhtIaHCNekvJ6HfYvOmIxJditO0Dwa28UqmQNeKKuBrymd2Pn
	kk6UkgVQ3EYINOJ8dXBZWwa9P9Rbu0ycdnI75v4tckaJXH8TijEDWtXoL+WzqUo4CqGfI
X-Gm-Gg: ATEYQzwdnDECjbjM2yNZDSDfQ8106qrJWz2dQplOK4ArFJ0MNQ53gjBMc9zrTiw2Phk
	aKFHyyTGg8TFc5+oznEhS0mYZbbdB5bve2rkJgKVYcPzkQEPSfqQdH1meZZTbb2NERIlgoUARzL
	CH4qHhifD0ItLUE1bA8+5asReWQ193Y/aRWiQ+w2Z633psuxI+75lQJi8ECJCv37hahgkSsKC3e
	SQWVh11cbKSeoUMwNmnYN8pHeTTzJu1Pot2UJzxpvdNrEtALcdQAeFk82DUy7GwDergIqBAPTjN
	mHoK7vyB+NEytb4TOVPvypHKpi8n1ba+YB9UKwwQtO0sVUXoNW7LHz3qs2A/Zg5lDFGMoe0lH/y
	+haMP0FBwJw/e5ZGh4Moxk3683Fm1x8Qsgxo=
X-Received: by 2002:a17:903:2c03:b0:2ad:ad0f:bbc3 with SMTP id d9443c01a7336-2ae6aab2710mr80733005ad.33.1772740114015;
        Thu, 05 Mar 2026 11:48:34 -0800 (PST)
X-Received: by 2002:a17:903:2c03:b0:2ad:ad0f:bbc3 with SMTP id d9443c01a7336-2ae6aab2710mr80732835ad.33.1772740113587;
        Thu, 05 Mar 2026 11:48:33 -0800 (PST)
Received: from oss.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae4dcf80f2sm127371555ad.90.2026.03.05.11.48.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 11:48:33 -0800 (PST)
Date: Fri, 6 Mar 2026 01:18:26 +0530
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
        Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH net-next v2 2/7] net: stmmac: qcom-ethqos: convert to use
 phy_set_mode_ext()
Message-ID: <aaneCvwkgMOLFsVl@oss.qualcomm.com>
References: <aacD3osfaZkLsGxm@shell.armlinux.org.uk>
 <E1vxS44-0000000BQXU-38lG@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vxS44-0000000BQXU-38lG@rmk-PC.armlinux.org.uk>
X-Proofpoint-GUID: ylgnU4CgFbuhnic6h7nvuGe1_vtGJCU4
X-Proofpoint-ORIG-GUID: ylgnU4CgFbuhnic6h7nvuGe1_vtGJCU4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDE2NSBTYWx0ZWRfX652mTgSrmdFL
 2G3Q9HYRYihE1l2PCYDOiruQ8Jp0u5cZNzlvhqfVa0mwnzVOc7Q+NiPrAxNlgZrohGiHOQ0cxzS
 AjnsNvf7Qv65ZZGxOznOvqPYouqwwJh929ZjgwZ24HF6hLgqSgXZ4cppwhjvhY972M/s/TTymMK
 mcYx79pKTplm0WpwvoCzhFxjRGHNpfM6IQYszCztt58dy5EZlSQOn2Jn9XG4mvmzQRypki5T48q
 cyvb/FMfebTrrjO2cZ0BlXQmn6Z4JPtPLP2KKbUnL1JqGXEzqvKQdiyrulaTmi9rT0XqjoPc2BJ
 Kc2H6wyTo/QBVzlxQIr5RtzZNsPB0iVSP9pJmhGApJVBzTeoGFBmnc9iso4DmjG2whRTpsUHIUO
 J9fK4RTkIZtSHUP1erU9Q88SPBaPRlohqhJY00R2MVX+3Uxf/k3O+QRTKFZpMWtzppSPhZLP9Ly
 4jW2/Bzws5an6zmwGRQ==
X-Authority-Analysis: v=2.4 cv=XKg9iAhE c=1 sm=1 tr=0 ts=69a9de12 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=PHq6YzTAAAAA:8 a=a1qNmnCxCMJs4MpL8WAA:9 a=CjuIK1q_8ugA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=ZKzU8r6zoKMcqsNulkmm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_05,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_114835_464025_9748D1BA 
X-CRM114-Status: GOOD (  11.15  )
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

On Tue, Mar 03, 2026 at 03:53:40PM +0000, Russell King (Oracle) wrote:
> qcom-sgmii-eth now accepts the phy_set_mode*() calls to configure the
> SerDes, taking a PHY interface mode rather than a speed. This allows
> the elimination of the interface mode to speed conversion in
> ethqos_mac_finish_serdes().
> 
> Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Reviewed-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

	Ayaan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
