Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C053FFEFB5E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1CvO69Gtf9Qb2ut65YgnOGbk6ub3KOto54QjsQzLgJo=; b=g/Ssv9tZpcDiKb
	H7iLPyy+TSPWIykQPU9yJBmEV83Z46XErisp0YXS4GoIzaPXoRkCnYVEc3Hsjn886GbSENAzmTDMO
	0XWbg/ZVFVRWVhFSGaIVMr01t9SfCQ5xhKbbpfGh5EPdOfAJupLiwdH9Qj4298m77ZoGkcg0cEKoN
	6VFpkSWotjZg9HW3fenPyRXo8VUxxijmL3pw8yxguBaMk94CUuVUlqAO5QxBqVkdFmN2Me5AM9zaC
	afBG/szqbF/nahd9BTnENPzQ3LkTZRKdQ9ti2j5a92YG5iVMziSp/JUsjlJLr12nzMXig1jzKj0D/
	qWpRFsQoslg7GlYw8SgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzxC-00000008fem-29xV;
	Fri, 27 Feb 2026 15:40:34 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzxA-00000008fdp-0fbB
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:40:33 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4837991d1e1so3007225e9.0
        for <linux-phy@lists.infradead.org>; Fri, 27 Feb 2026 07:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772206830; x=1772811630; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6eW6Ffiaz+a/K4TbWo3MIPEdUxUEHjHOWmvCKtzuvO0=;
        b=APmbKFmoDxB5ZwBaKO2tQWBfKCOXrCd2Wo73Y/dJerEsJxHjjETRILtmIZjxYFWeoS
         /SAt1tSwGe1vBJMHbd70BIpuwPtv7wwzxiuEz+joaP4d6Pt7iYj82xMWUmjXOSLCc3ye
         +sYPCBg4H/6mC2M4eWuoYFisPXXa6RIm5ygUwlpK+Nv2KJbkagvgHZIQYyA+7sJckwCQ
         I23WD8Nxht0lBb1/xZhtfYkRFH9NJxQUgknyqVtBWjLyrKhAOYqXXc30qcfP7c2o/3VI
         4S/+LeAAlAX0V41niOW67i3IyWLNmlfU9jqzxJCHPgzn1iaOiLMBtRxob2j6b5Sxe2QZ
         WTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772206830; x=1772811630;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6eW6Ffiaz+a/K4TbWo3MIPEdUxUEHjHOWmvCKtzuvO0=;
        b=HAvSfsWW9fFW/S8ii/FgOSaXUnbRLq7gkkViMDj6ufvyGLtknJpm4cZkNAlW3s0MOP
         C+5QVxFX3D+AYL6/BQP4Opd9DIu8mrS8KIDVuZFxR5wnvPjQSVqqRqrz8cXU6ViWSjkD
         jCpCnNekLNWTaSVgAUVoKGexCqvdIC9eIosDYzlddyq3YMQ5u0v9wN6Sut23T3QATGzm
         rHd6+EUaKkImq4Kwop5cXzOJw5Do7vIkFNYFp2A8Hnux2vl78TRKkZK13MaCWPyoxyil
         haJNm2hwnzxtquon4Ad8/i+k521Z5sBtTVP2byexbnRPqiTMcSqMDQFhi8+pviDymKDe
         mkeA==
X-Forwarded-Encrypted: i=1; AJvYcCWsDJdXp++rKZiwovKSEJjRgvgTcvzMVXkcWc3RS54cgf8j0HAMGqwt0K30cNZ9G1EPnxEEW3BbOGI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4Vk8UpC1g/KIalyG5Asyy0KTJl8frOO+UGL1YkZ8snyX5mrjL
	cDrKRAQJiMnyF/XdSmVLt4d7Mv/U38l3ffo2pDkbgC+NWx9XpOtKEwbV
X-Gm-Gg: ATEYQzzd5U7nB8SqJiQTiPpQA41nFq/kU/bvMajdH6ARsi5EJcwiNXKdqCiW5jn1+X5
	c7BbIm2awCuPHftJ6KZLRk9vTyMLF9QVkcDjmSrfav0xm1O01s1HETGOlvCxsLA4NiIavpHCkhm
	v80gM/8sVf6FUVoGMQPRu3s4dMibBofweFs4AteG3xYqa0noF5LuxMpeCxm3gSzhuGmiWOhgsrk
	i8n2iKeq8utyDlcYXLXi68+Av7Wfugi7Y9XC0EyCTY0eQ2gz3ReFwti5jaITRqDVzIlvnxVMx9z
	XxGv+RVtmWP8WMGxWNhw4g1fEKQSTWPDyim2z9AvX9vPqMME3hvx+ud9sjx8UTOxr/55SQVFd3H
	Mer2M0VScNw8JK1LONQz3HMEbpiDx9lRA25L8KAUXWIlfUQSjAcNE+cAQVU7QvV5UJFc2PpHT7N
	1GDrn5fxV7e48cYg==
X-Received: by 2002:a05:600c:350e:b0:483:79af:ca1e with SMTP id 5b1f17b1804b1-483c9be0523mr30417725e9.5.1772206830140;
        Fri, 27 Feb 2026 07:40:30 -0800 (PST)
Received: from skbuf ([2a02:2f04:d608:3a00:ac95:d4c:390e:fb0a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcbf016sm101582255e9.5.2026.02.27.07.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 07:40:29 -0800 (PST)
Date: Fri, 27 Feb 2026 17:40:26 +0200
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
Subject: Re: [PATCH RESEND2 net-next 5/8] phy: qcom-sgmii-eth: use PHY
 interface mode for SerDes settings
Message-ID: <20260227154026.dx364j5scae4epqw@skbuf>
References: <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
 <aaDSJAc-x2-klvHJ@shell.armlinux.org.uk>
 <E1vvkUI-0000000AuPK-2IBa@rmk-PC.armlinux.org.uk>
 <E1vvkUI-0000000AuPK-2IBa@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vvkUI-0000000AuPK-2IBa@rmk-PC.armlinux.org.uk>
 <E1vvkUI-0000000AuPK-2IBa@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_074032_195232_6541C662 
X-CRM114-Status: GOOD (  12.75  )
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

On Thu, Feb 26, 2026 at 11:09:42PM +0000, Russell King (Oracle) wrote:
> As established in the previous commit, using SPEED_1000 and SPEED_2500
> does not make sense for a SerDes due to the PCS encoding that is used
> over the SerDes link, which inflates the data rate at the SerDes. Thus,
> the use of these constants in a SerDes driver is incorrect.
> 
> Since qcom-sgmii-eth no longer implements phy_set_speed(), but instead
> uses the PHY interface mode passed via the .set_mode() method, convert
> the driver to use the PHY interface mode internally to decide whether
> to configure the SerDes for 1.25Gbps or 3.125Gbps mode.
> 
> Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
