Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C53CFEFB62
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06J0SsmVqMDcxgoKe5YRw+vmaUFhoc01vLn3EkhKbLA=; b=1ZlDW9ZwwddkVN
	vCNC2t7q8Ijy6bhlzjJsLxlD2qhgVtW0VOJfoOj42nYVZGcQgDrCV6fI1coYiWQ6zVYI4DZOWCCSK
	oUhiFZmEw3fxocxUdIahrb+c6iSCvCn2+aFJp4KmetbckeNzr/FDLOYEkJ7sFWXjQnIAniYifu0aG
	mMx/i1agBZVG7JEDQPHuzp26k4r2YzUjooZoDKjzb289c/GNbmd2Zi4K0ZG+Fh4qbZg2WMufPzuUA
	ekVN7r9+A6E2BWcWBGIBfb73TnJBCsjYtVGMhYbZd+U3M24k9oFTfSapoIf2V0agRYP7ajPYW9aoe
	A/EXo4mEsJy2kYmqVUZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzz4-00000008fp7-44LH;
	Fri, 27 Feb 2026 15:42:31 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzz3-00000008foA-1DwC
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:42:30 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4806b8fca44so2958685e9.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 07:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772206947; x=1772811747; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XHBV2WlEb8YlpAeS8vaO1JmiPasxSaE0UWxp/WI+MZ8=;
        b=LHt89zQY9Nh+x4MUpFqfm7MrktKLVLnqTRP+hnYMv3iEZlLrWOgqgaF0WFo0bugCyW
         r9ZfeMSW7/MWI40Hss0TPzXHyjZGnWgILrfvabn7SKDOaTuLz1ZCp5Kd/h15DVAt++Co
         O8+Q2pa6DNwblZVW9rt3WNKcix4O8Ge9sWn1ylBx6BZIgrRkCmXwZ7U5EcHsGDz9RC6y
         OKUVefDvaa8rEHaZre887QIYLFUvCD+Kz33HKlo8+ra0YU8HstQ2WwRpOzXfK/+Th8x3
         nGCHH1N8QqNEVsKJGztKdK2Km0B/kf41NZAtcueghDwI7GDYV233A9sG5i/s7ey/h/oo
         rzsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772206947; x=1772811747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XHBV2WlEb8YlpAeS8vaO1JmiPasxSaE0UWxp/WI+MZ8=;
        b=uJ/QY5aZ//qWjUK4n7e8rb0qLyMhz18VGvoaB16aZJgT9tGoNyOFgpByOi21anbVTk
         jPo8+5pzLuOf6IYY+VmpvBPZBiqXNhpm3SzvkIK8ys1fd4FogQbkGjbwOUGAGTx7q+Uw
         lWtsTPgT1dXcAQdgessT9PArq3pUZelsuAvKu8j7btlfPE2ijTGPQyxZBz+a/u5s01IP
         +WSDeFYsOTrlrPlS5JI60WEceaHX7qfoNhJJSn0Nt3u80OAc1k5fF3qcLeBBbYxTn/Y5
         nLOZHlA0SaE7IktVQsWB3m6D07OTZ38OgWAy7uj52LirPfm0wUXM9NBFakO64y9CQYIh
         nwhw==
X-Forwarded-Encrypted: i=1; AJvYcCX0x/cVx1RuYjd3edLIexNmMwh9qVCSxT9fpikU3Fm6eFjtxuxm14uIom+DYN07fs8J/ZqTOCoN30o=@lists.infradead.org
X-Gm-Message-State: AOJu0YzY2kQl/IvpLTExaJkiGKjEvSFtbqYhGKN+B1WkSQBTZkJj3GiH
	hB5vqNMjTvMixl4DEoCXcsZi2yHybyzGzA+Ia/N0d1fUYM1dcW8qbaO5
X-Gm-Gg: ATEYQzxtJHQENFOIX2+Bto0yKCl0zrGsxNEDXn3EBjbzRtwkJf91H08tvjMk2RILMWI
	3uJPXLNYNhhBT1XcmTLMNKyi/rUGNA+WybpmubXEBRKINOSh8SJ7/YBFp9TkIGIFhm1+FzYLAXS
	HRhVmNsQCcJgKNtnlRGco15tXE1xK9wDimENoZAMcwzK0JCkqLKlseCOnFVx65dgnuwTILdUp4x
	OZ1F0A1biyqjuGSwwtwwzhGkd61GERNrps7bedHMwfX0X+8TCpASPLOCpPIAWfnsp3NqzkEic8s
	x5E3SrJLTmo1HQ3mBob3Jbbt9RWqU2gG4sks8Rd0rjU/FR/EJEnLrxXJeBRz4knNNw3v9TYSq2v
	fGoxrmBdDt6n2wZTeYryShbIwJ6C6M+//hJ63sWcQq8sa6r3alIsvKg2AS/IOwXIJ5u9eYJ1QV0
	LpDgM6kCrYQe5VrA==
X-Received: by 2002:a05:600c:4592:b0:46f:ab96:58e9 with SMTP id 5b1f17b1804b1-483c9b7fadcmr29575125e9.0.1772206947165;
        Fri, 27 Feb 2026 07:42:27 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:ac95:d4c:390e:fb0a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c60f764sm7600585f8f.3.2026.02.27.07.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:42:26 -0800 (PST)
Date: Fri, 27 Feb 2026 17:42:24 +0200
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
Subject: Re: [PATCH RESEND2 net-next 6/8] phy: qcom-sgmii-eth: remove
 qcom_dwmac_sgmii_phy_interface()
Message-ID: <20260227154224.erj32n2kmwvv5xgl@skbuf>
References: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
 <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
 <E1vvkUN-0000000AuPR-2qKj@rmk-PC.armlinux.org.uk>
 <E1vvkUN-0000000AuPR-2qKj@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vvkUN-0000000AuPR-2qKj@rmk-PC.armlinux.org.uk>
 <E1vvkUN-0000000AuPR-2qKj@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_074229_332412_5E873F74 
X-CRM114-Status: UNSURE (   7.78  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Feb 26, 2026 at 11:09:47PM +0000, Russell King (Oracle) wrote:
> Now that qcom_dwmac_sgmii_phy_interface() only serves to validate the
> passed interface mode, combine it with qcom_dwmac_sgmii_phy_validate(),
> and use qcom_dwmac_sgmii_phy_validate() to validate the mode in
> qcom_dwmac_sgmii_phy_set_mode().
> 
> Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
