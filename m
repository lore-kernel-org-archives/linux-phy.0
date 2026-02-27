Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4411DFEFB56
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lC63Dv3gSuqOZ04zwRsTYHHAFAiQWOwonbWcUNtasjU=; b=VSQ7Kt8z2iy+jU
	/ZEalqdJf6e4XN8qjzbAQAstrexOuL5FnsHJ3w0UFogMMcFVd074UcB/ijzWeVpJemkuHGm8xmC/T
	At9lIRP/EsBgK8XdKWbdKeX//YkkapKWUdNVGrQIpeGqowjC2k74TJ632+EOvwVKh6GJVQct6WibX
	KUsrZUvDXsXEF7rtc2fyDy39h0AXvnPHxE7HCqDv905gyYaH1IJ2WpQD+ZQr+fECSuvCFTuQK0NFV
	6TDVUha2y8Fxi6k847xuQL3fiX8a6rvCk7cseN2+SDbR9ipjRaFyLxLcUVp2rzo2ei1hrqj0Jj2Jk
	Zmb84jleGHAQXBoodsSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzoI-00000008dUi-3xa4;
	Fri, 27 Feb 2026 15:31:22 +0000
Received: from mail-wm1-f51.google.com ([209.85.128.51])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzoG-00000008dTK-3lVh
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:31:21 +0000
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4830b67aa6bso2697435e9.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 07:31:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772206279; x=1772811079; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P2kGl/nxca3gMElmPgWClDsdWOdb0++gHklmfXh1TOU=;
        b=OLtQGgqORjiUW4ReRfsB8qRWFs2wNavU64MXylfRgiN/iL64Bt4PkDc42NBh0oTaql
         5taF3K88oLdMQkixgY4KMaKDAAnqrPVcp5ZPWcnPtIe8kiniUM0f8ArZZs6sCX7cQa/4
         ifYTLTACyChBATzJ9Q6H/SPGW8RDWuDKd64eeXzMwjds9fDRr2W1ZBzZxQe9njI/7/xN
         Mm/bp3rxVgS5af0MD7uT/7OuXNgPWg5QquZQxfnh7M6a1uKT4Q1Vfdb6NGtK3r+9X22m
         7hdm6uEI6ketlQqNcXFzNo7BBLgzwhHVF4DTmCrIVqEI0sECIoY6/p4orFLb3p6IFQJE
         hN+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772206279; x=1772811079;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P2kGl/nxca3gMElmPgWClDsdWOdb0++gHklmfXh1TOU=;
        b=DnfwMXjcFz3kRm8QASKBNSL229jUQl2dpJ2ivz6yf+UbrrIrGhqQkg9VZP7dzg12u7
         iEHy22VlO5o02LXa/TLznTf46LrEyzd0aEsw+PiQCLyh1rBJWborU2fzPKmcnzE/tLgy
         ID2Qn4t8QFrA50smuxUb0uJbg/Z12nbcU17/JTkQOijzkK1jVyNfI+sG62xgyqSJ4R+E
         1TpJ71s8w2pTVaAbaV1YVqQix4IvZkW6BINIuvi3zvdcrMbW40ZmJv+m57ay/zdXUeR9
         i5iiT4j4x2FFehXWEHNAT/O+rRS/y3q/6j78yh7lR4BimLrtcewewxmjBtXEWNz6ql6q
         nWjg==
X-Forwarded-Encrypted: i=1; AJvYcCVgZzmqW4m/T+PdNX228GnDvOdRrNI6AqncOMne7KpFkuOwj3CfYcMZHh3TUWiS+v89RVSjOqwhS9g=@lists.infradead.org
X-Gm-Message-State: AOJu0YyN1j/ml/3/vqeAEs5BthB5+CTWIQeSURPHZ78QNHXV+7tmo8bA
	zZdvHCvz/Ri/zWc8DBrbmQmSuAunbBUBCnVvsEeO5EfaFAsj6twoo5do
X-Gm-Gg: ATEYQzybOuDrCo3iE71ALhkYScHPJP1Bq807JsJqgJyez0Nr3CmywAjgA0gWc4EIJ9s
	mD+j5Pdhy4ti6M0saMh+MgJrqk8MXnIv7J4eQYFXIhtTK18aMjVa0l+ZQW3/hwVWbWJrp67aHT9
	1Plf/jdQgRgU2FGkMarIWM2DzmuAUciuzYKT264pLK6100JK7yui5hjNFl6c7sUnCeXfsarrHl2
	DiWguWOIdQZyY5MJyMHu7Gr9rm2JQMqBWdhs2ppcfUpNu/J7Wm9iEPVeFFqgziapQCJmgNh7yxH
	tAHcXikS381wy0xX3Q/KWEQQcAYF2tJqJPfNg4JsUulusY7ycgBQxdWhBPiTim/7qQCJlopwfpz
	81RGEOU8B52Zkyu9YDeB+bzZ67U8YfQnX78jpsdxV51pMdlbUaz3auUS63OsTEmYNiVwtJ8e4cs
	JCBVJXZXPVYYO/+Q==
X-Received: by 2002:a05:600c:5249:b0:477:a478:3f94 with SMTP id 5b1f17b1804b1-483c9c29b66mr31520385e9.5.1772206278424;
        Fri, 27 Feb 2026 07:31:18 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:ac95:d4c:390e:fb0a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm230573145e9.7.2026.02.27.07.31.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:31:17 -0800 (PST)
Date: Fri, 27 Feb 2026 17:31:15 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH RESEND2 net-next 8/8] net: stmmac: qcom-ethqos: remove
 phy_set_mode_ext() after phy_power_on()
Message-ID: <20260227153115.rk7ntq2p4fbjcqdv@skbuf>
References: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
 <E1vvkUX-0000000AuPo-3mEw@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vvkUX-0000000AuPo-3mEw@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_073120_933280_D81E2EAC 
X-CRM114-Status: GOOD (  16.11  )
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

On Thu, Feb 26, 2026 at 11:09:57PM +0000, Russell King (Oracle) wrote:
> The call to phy_set_mode_ext() after phy_power_on() was a work-around
> for the qcom-sgmii-eth SerDes driver that only re-enabled its clocks on
> phy_power_on() but did not configure the PHY. Now that the SerDes driver
> fully configures the SerDes at phy_power_on(), there is no need to call
> phy_set_mode_ext() immediately afterwards.
> 
> This also means we no longer need to record the previous operating mode
> of the driver - this is up to the SerDes driver. In any case, the only
> thing that we care about is the SerDes provides the necessary clocks to
> the stmmac core to allow it to reset at this point. The actual mode is
> irrelevant at this point as the correct mode will be configured in
> ethqos_mac_finish_serdes() just before the network device is brought
> online.
> 
> Reviewed-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
