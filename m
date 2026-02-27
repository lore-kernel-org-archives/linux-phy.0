Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F57DFEFB5E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Dyh3V5HilqZcAOVHTBxo611/jUw0kJt2Ch1f8+deRo=; b=hSJ+Xf+QeUyu0X
	7GQGH5aJt+Uw4wFYZWfOnQQS9kWWa8qqEwD0GHRV5dMZo1SiU8fRIOIksUS7aUgbJ9wqI4Qtm79nm
	n7BDjeiX3bydexcnqC6IJsJBIWcMrkPui6oNRgu5vSutMVFnuTLFpun9JKWFWNN3Gyv2NIof1oQZD
	UG4X2QqLVuUJa78R4ERuaP3qKq5DAJWsDAVi3Vhg7W6rzYmTxGfaANwrT1FHd8d0IPMjVgZxGamGs
	6SiIkDVmIU6GxiUyBvpVwkWMQyh3NOGWcJArJZpsVDF4Cir1AwTPtUnOBeUdBNwdVU8Jbn6+gn6b4
	V/CKWgHmKbALK+4agOUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzvp-00000008fVj-3dWp;
	Fri, 27 Feb 2026 15:39:09 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzvm-00000008fUL-2aD2
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:39:08 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-48371104ffdso2906765e9.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 07:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772206745; x=1772811545; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wAkEyJJOJ/JdV7CNjPcqTwZJK7pvth1XKt8oYwJ3QEI=;
        b=MGAe7sUWh2JVbiS6EypKnGqqg3DkciwTjcPJlUfsJKgrmVnpLiOCHyK+MIJPJjSqiB
         1g3LlwNG/n81/SlbshuJxngST13mnuV2q4Fbqr7D3u/NnBJOz32pFJQ6n8diJoGs1G8y
         Xgrgx+Vl4eugvk+whJ/F1X0QJMBOzW3VWstDc43zMQt72Xa5bglPeHis7Oy+Xewb2d9G
         T4E2aaeHCpql74+STXXtxE/UfYyZtKbuiezXuAbLLUz4Lym7TP38IDn6Tiho46R988YM
         ysEPUT/k99GTM2Pum7UiP1SAsybP+a5kQvjI3q+dPSe7TBRxsfxKaUQfq536dOkH/oLp
         04jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772206745; x=1772811545;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wAkEyJJOJ/JdV7CNjPcqTwZJK7pvth1XKt8oYwJ3QEI=;
        b=lD9yimpnOUogQnPeZUlPZ2PycgczJCdH4kEbTG9SEahP2vTe6QnZvYance0ywy0Xjf
         uc9spifkW/8Xw1YhRid3szxJQIjhbQza2MaaPF7XgIxPEDaGRdTlXBBoqVe+e7jsZmmq
         hNueemJhTXN0uDI6+KErchBriySTefT3XynjTea1f5iPnqpxkqlVT9Q8nTNLmz1CYBI5
         v7r5RmR6qGv7g4R3pypNzmRwN2jSCYgUXTvaaOgaAMt3BhjV3n0JOAYtXDEBIW6i7kOE
         WSfZs6xpuMDBoJT/TtJqmnkLaQC6GhXcq9XF3PmKJ7jALrRldkAjnXMjIw3GPj+W2uGa
         5uhg==
X-Forwarded-Encrypted: i=1; AJvYcCVL8Xt7PgelWcyzuKlpPgqqKh37MVI/jjE3KC/VCwzw63kAyGaAO64PdI9vmWzonvOgnMHrl3ytxAk=@lists.infradead.org
X-Gm-Message-State: AOJu0YygWK557ecHWtBLhnORDqWAAn/5PI3tR09ccuBmz8PkG3JvqJI+
	Ft22aPdFXnPLLT+qTa9OVtfqNEBJyDldC8ZdE9taJs0JLg5SSQ3h2a69
X-Gm-Gg: ATEYQzwCiSavWhwUn9POpVwf4YSQEsDyjG8Pt/7/MQzoiJyKLTl4P2K/4b6kbGZDh3A
	GvQyxrrSyrxB6DLAp6Zorc8wWAV8OhTruLOEQM/cPWHqoImNpbfTNBvLHVZdeaDL31gqRvuVwzK
	fNQbiGLEu2f55+tsRObBAJpEB5IADgLKhkO6mWBW29/ZQiFja/TehljJa34MJxDH0VuZ+c+vVPX
	2ZjJkU2Pr6S3exlFAy8oLF8LEIHbx94htxotzH5VPR2qmyU0WtLupnc2Z2g3Gw11bGT0l00QYnd
	g3TGSwtUlDE0GO71IZ/WEmF9Uxqk7B61e2V1fYnhO72fA4jCoGdcwOzWYW12+/lLKKBsLPPxJBC
	1xKNYDZOZfbu6a1enaCrqpd+ngHfltDOWrwOx3XnAG54Liso4z7/11QE7tJjuYS5DCy2ThFrOaK
	9Y0p+J7wwtAkPudA==
X-Received: by 2002:a05:600c:46c4:b0:480:6612:253 with SMTP id 5b1f17b1804b1-483c9c27367mr29499615e9.3.1772206744631;
        Fri, 27 Feb 2026 07:39:04 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:ac95:d4c:390e:fb0a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfba9566sm97450615e9.3.2026.02.27.07.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:39:03 -0800 (PST)
Date: Fri, 27 Feb 2026 17:39:01 +0200
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
Subject: Re: [PATCH RESEND2 net-next 4/8] phy: qcom-sgmii-eth: remove
 .set_speed() implementation
Message-ID: <20260227153901.qor4rtvtxur2zywh@skbuf>
References: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
 <E1vvkUD-0000000AuPE-1l06@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vvkUD-0000000AuPE-1l06@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_073906_800263_225C1576 
X-CRM114-Status: GOOD (  11.10  )
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

On Thu, Feb 26, 2026 at 11:09:37PM +0000, Russell King (Oracle) wrote:
> Now that the qcom-ethqos driver has migrated to use phy_set_mode_ext()
> rather than phy_set_speed() to configure the SerDes, the support for
> phy_set_speed() is now obsolete. Remove support for this method.
> 
> Using the MAC speed for the SerDes is never correct due to the PCS
> encoding. For SGMII and 2500BASE-X, the PCS uses 8B10B encoding, and
> so:
> 
>   MAC rate * PCS output bits / PCS input bits = SerDes rate
>    1000M   *       10        /       8        = 1250M
>    2500M   *       10        /       8        = 3125M
> 
> Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
