Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A12AACD3445
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 23:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:Cc:Message-Id
	:Date:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LHpY6DZwDFywBGpUQ/ja74mqluIHa1zBVIkEqJ6th4Y=; b=Z1g6PqN8wQlxPqyWyjUZv+86Wd
	WLQyJiRIi/rOow//WElFx+9VGMZ0mFrwRFVBOooZs7TDpXYPuoMIIOPyho4ChecoGZkZNO9aYEbK4
	b4AAE501j2Q+t0cDB1o4szgikSJbPUJmZOJ9b/O19JrIbx4wpZeyJaPg8fHQLDFdhtdckZC8xEwZL
	XW4Ub21QiqdIRhDLyx+LhqisWPA6UCd/2aAXE5Ady0YDkya7/EyY0E8BtiqDTz6TC3oyrRUJ6+3jY
	sZtt7jhSt4d+yNMLTEePu1TV2wG6UYKdJqaDFwnNNRkxwY9yH3PnLjwYufss8ude5Zu7MWrki1iTX
	j+P6JKvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUHH-00000007hop-43oK;
	Fri, 08 May 2026 23:06:40 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUHG-00000007hnv-0xqA
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 23:06:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubuntu.com;
 h=In-Reply-To: References: To: From: Subject: Cc: Message-Id: Date:
 Content-Type: Content-Transfer-Encoding: Mime-Version; q=dns/txt;
 s=fe-953a8a3ca9; t=1778281596;
 bh=q2RkdA8XgRewXeIJWKjEFH8X9QpIWC1TGFtAoUA+NC0=;
 b=dnhJgd3bj5vKoS98ZpwuBbJDZSg8VBVJl2aSZMoKtG6AcAmsq/kyja/uFeImpEdhAv+0I4rI4
 td08ilsiUkIqgJInw4cHQeOHmJouRRqQgkgk4Bub/oEQMahofIZp9gjhLLYRJVd6LOC5ey2x0rj
 qZCO3OmwII0TOTO/o2eAbWCEwZwi09xitZQgsL+magDoRU3sGOs1DYJBGS2ZA0njzWrC55aTwoZ
 8Sftx8Wp/rWdUOY8KLDNaspGgLclIz5bKT+UF3u7WND+sWuO5ZuPswpDIdhivNRbDPsKYS82RNV
 hazGfaUfDpX/QYLrV0Pc9a2Bz72pzLAh5E+iOAXBDKOA==
X-Forward-Email-ID: 69fe6c7947f0cc71ba90f8e4
X-Forward-Email-Sender: rfc822; jpeisach@ubuntu.com, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.7.7
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Mime-Version: 1.0
Date: Fri, 08 May 2026 19:06:31 -0400
Message-Id: <DIDO7P6WFHGO.MP8TEJ5N4QQP@ubuntu.com>
Cc: <olteanv@gmail.com>, <asahi@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] phy: apple: atc: Fix typec switch/mux leak on unbind
From: "Joshua Peisach" <jpeisach@ubuntu.com>
To: "David Carlier" <devnexen@gmail.com>, <sven@kernel.org>, <j@jannau.net>,
 <neal@gompa.dev>, <vkoul@kernel.org>, <neil.armstrong@linaro.org>,
 <marcan@marcan.st>, <p.zabel@pengutronix.de>
X-Mailer: aerc 0.21.0
References: <20260507163746.108086-1-devnexen@gmail.com>
 <20260508201958.30060-1-devnexen@gmail.com>
In-Reply-To: <20260508201958.30060-1-devnexen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_160638_408324_79CE2150 
X-CRM114-Status: GOOD (  13.39  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="Flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri May 8, 2026 at 4:19 PM EDT, David Carlier wrote:
>  drivers/phy/apple/atc.c | 27 ++++++++++++++++++++++-----
>  1 file changed, 22 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/phy/apple/atc.c b/drivers/phy/apple/atc.c
> index e9d106f135c5..4156fabad742 100644
> --- a/drivers/phy/apple/atc.c
> +++ b/drivers/phy/apple/atc.c
> @@ -628,9 +628,6 @@ struct apple_atcphy {
>  
>  	struct reset_controller_dev rcdev;
>  
> -	struct typec_switch *sw;
> -	struct typec_mux *mux;
> -
>  	struct mutex lock;
>  };
>  
> @@ -2066,15 +2063,25 @@ static int atcphy_sw_set(struct typec_switch_dev *sw, enum typec_orientation ori
>  	return 0;
>  }
>  
> +static void atcphy_typec_switch_unregister(void *data)
> +{
> +	typec_switch_unregister(data);
> +}
> +
>  static int atcphy_probe_switch(struct apple_atcphy *atcphy)
>  {
> +	struct typec_switch_dev *sw;
>  	struct typec_switch_desc sw_desc = {
>  		.drvdata = atcphy,
>  		.fwnode = atcphy->dev->fwnode,
>  		.set = atcphy_sw_set,
>  	};
>  
> -	return PTR_ERR_OR_ZERO(typec_switch_register(atcphy->dev, &sw_desc));
> +	sw = typec_switch_register(atcphy->dev, &sw_desc);
> +	if (IS_ERR(sw))
> +		return PTR_ERR(sw);
> +
> +	return devm_add_action_or_reset(atcphy->dev, atcphy_typec_switch_unregister, sw);
>  }
>  
>  static int atcphy_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
> @@ -2146,15 +2153,25 @@ static int atcphy_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *sta
>  	return atcphy_configure(atcphy, target_mode);
>  }
>  
> +static void atcphy_typec_mux_unregister(void *data)
> +{
> +	typec_mux_unregister(data);
> +}
> +
>  static int atcphy_probe_mux(struct apple_atcphy *atcphy)
>  {
> +	struct typec_mux_dev *mux;
>  	struct typec_mux_desc mux_desc = {
>  		.drvdata = atcphy,
>  		.fwnode = atcphy->dev->fwnode,
>  		.set = atcphy_mux_set,
>  	};
>  
> -	return PTR_ERR_OR_ZERO(typec_mux_register(atcphy->dev, &mux_desc));
> +	mux = typec_mux_register(atcphy->dev, &mux_desc);
> +	if (IS_ERR(mux))
> +		return PTR_ERR(mux);
> +
> +	return devm_add_action_or_reset(atcphy->dev, atcphy_typec_mux_unregister, mux);
>  }
>  
>  static int atcphy_load_tunables(struct apple_atcphy *atcphy)

Looks okay. Ran it on M1 MBP, no issues as far as I can tell.

Tested-by: Joshua Peisach <jpeisach@ubuntu.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
