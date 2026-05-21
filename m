Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E26FACD4F3D
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 14:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJ7SWqx9W3FD/4h0nGt4OtTT50g+DnjrnevfyK1lC7s=; b=OBSbqxeY8tqg+e
	qgMACLJ1Qz+CrC7gIeRe50CvBWW75/Ax06SiS6xL8vQvOsx4hJe117/HDEcxquafRa/TCnS9aW3u9
	XkcBweUt+oF0M1JlVu3gNJE9PVPylB2ywiqL0m95uQ4juJDnxVE8L3EaC3W/0EWyoQv+LdDq1Pe8t
	FQv1r9udrqWYALCdXtJNOFQELsjBuLUDaEwqHMudJVupbS7b8vy3ykVCZCkWbjGr8MHCNipFoeQnD
	lFHK83yVMWzJbxK9PNeZt7QjTQQAC0NGzdm8BTifibyORl/pplFV8OaH/sbpTo7tj3IcMgKkpOE4f
	DvxU3Ti/gsZrHcv4sQIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4jq-000000088y7-0wkH;
	Thu, 21 May 2026 14:51:06 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4jl-000000088u9-1Etl
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 14:51:03 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 3D425C2C64D;
	Thu, 21 May 2026 14:51:50 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 044E760495;
	Thu, 21 May 2026 14:50:56 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4E841107E89AF;
	Thu, 21 May 2026 16:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1779375055; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=fTteTqIzCkDDRfgTUqBszUa4Ju7v0nJjWKenJsd6KUA=;
	b=nB7dqaCbGmYNQpadDDIPmQoye+tBE1lUNZvnmsMHr5H8yJL6gZlt6Z1KK1CsY6pxBD7CV7
	0lg+Pcu0jDpSIlvZubgvSTe1r49CPtRBhdzx8oBEATZSE7hhmFjpp0VEIbWyr9UWVHTqsV
	lG9cBJf2qbTkdmqxNydPfcP+ePMw9Utsrqf7SnHTGCuL1dZHqtjCyOmzIufrWaW8CNMxP+
	YQAZteWlPklCBBlLPXLKMb0e6qeHAfFMpSWxn94l0h17LbH+RxTn3Q/b4oglUYEL0tZWUt
	fpA6iLiaCGy1JFmy+U0dOPw3+OyGY95GLWgebbtNiJvNsPZPm7Qam6gkoJDq2A==
Message-ID: <a02f6a76-add7-446a-9f92-304fee0ef594@bootlin.com>
Date: Thu, 21 May 2026 16:50:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v6] net: phy: sfp: probe for RollBall I2C-to-MDIO
 bridge in mdio-i2c
To: Petr Wozniak <petr.wozniak@gmail.com>, netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, andrew@lunn.ch, hkallweit1@gmail.com,
 linux@armlinux.org.uk, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@mork.no,
 linux-phy@lists.infradead.org, jan@3e8.eu
References: <20260521025755.24649-1-petr.wozniak@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <20260521025755.24649-1-petr.wozniak@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_075101_660079_9FB21078 
X-CRM114-Status: GOOD (  28.51  )
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On 5/21/26 04:57, Petr Wozniak wrote:
> The "OEM"/"SFP-10G-T" quirk entry in sfp_fixup_rollball_cc()
> unconditionally forces MDIO_I2C_ROLLBALL for all modules matching that
> vendor/part-number combination.  This works for modules that genuinely
> implement a RollBall I2C-to-MDIO bridge, but silently breaks modules
> that share the same EEPROM strings without having such a bridge.
> 
> The Realtek RTL8261BE-CG is one such module: a pure copper 10G SFP+
> media converter with no I2C-to-MDIO bridge.  Its EEPROM reports
> vendor="OEM", part="SFP-10G-T-I", and -- critically -- Vendor OUI
> 00:00:00, making OUI-based differentiation impossible.  With
> MDIO_I2C_ROLLBALL forced, the module silently ACKs the unlock password
> write, the MDIO bus is created, but no PHY responds; the SFP state
> machine cycles through the RollBall PHY-probe retry window before
> reporting no PHY.
> 
> Move the probe into i2c_mii_init_rollball() in mdio-i2c.c, where the
> RollBall protocol constants are already defined.  After sending the
> unlock password, issue a CMD_READ and poll for CMD_DONE up to 200 ms
> (10 x 20 ms, matching the existing rollball poll tolerance).  A genuine
> RollBall bridge asserts CMD_DONE within that window; modules without a
> bridge never do, so i2c_mii_init_rollball() returns -ENODEV.
> mdio_i2c_alloc() propagates -ENODEV to the caller to signal that no
> bridge is present and PHY probing should be skipped.
> sfp_sm_add_mdio_bus() catches -ENODEV and transitions
> sfp->mdio_protocol to MDIO_I2C_NONE so the rest of the state machine
> skips PHY probing for this module.
> 
> Any I2C-level error (NACK, timeout) during the probe is also treated as
> -ENODEV: if the module does not respond at I2C address 0x51 at all,
> there is certainly no RollBall bridge there, and SFP initialization
> should not abort.
> 
> The probe writes are safe with respect to SFP EEPROM integrity: only
> modules explicitly listed in the quirk table enter this path, and the
> RollBall password unlock write to 0x51 was already issued by
> i2c_mii_init_rollball() before the probe for all such modules.  Any
> module without a device at 0x51 NACKs the transfer and is treated as
> -ENODEV.
> 
> Add "OEM"/"SFP-10G-T-I" to the quirk table so RTL8261BE modules enter
> the probe path; genuine RollBall modules continue to work as before.
> 
> Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
> Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
> 
> Changes since v5 (Sashiko AI review):
>    - Treat I2C NACK/errors in i2c_mii_init_rollball() as -ENODEV so
>      modules without a 0x51 EEPROM do not abort SFP initialization
>    - Replace fixed 70 ms wait with 10 x 20 ms poll (total 200 ms),
>      matching the existing i2c_rollball_mii_poll() tolerance and
>      preventing false -ENODEV on slow RollBall bridges
> 
> Changes since v4 (feedback from Maxime Chevallier):
>    - Fix commit message: replace "stalls" with accurate description of
>      the RollBall PHY-probe retry window
>    - Fix variable declaration order in i2c_mii_probe_rollball() to
>      follow reverse-xmas tree (descending line length)
>    - Remove spurious alignment space on "SFP-10G-T" quirk entry
>    - Document that -ENODEV from mdio_i2c_alloc() means no bridge present,
>      PHY probing should be skipped
> 
> Changes since v3 (feedback from Jakub Kicinski):
>    - Drop spurious Tested-by: tag -- author and tester are the same person
>    - Use PATCH net-next subject prefix
>    - Move -ENODEV handling from sfp_i2c_mdiobus_create() into
>      sfp_sm_add_mdio_bus() so bus-creation code does not mutate
>      sfp->mdio_protocol; the state machine is the correct place for
>      protocol-state transitions
>    - Split combined variable declaration for clarity
> 
> Changes since v2:
>    - Compile-tested and hardware-tested on BPI-R4 (MT7988A, 6.12.87)
>    - RTL8261BE (OEM/SFP-10G-T-I): probes MDIO_I2C_NONE, link Up 10Gbps
>    - Genuine RollBall (OEM/SFP-10G-T): bridge detected, link Up 10Gbps
> 
>   drivers/net/mdio/mdio-i2c.c | 65 ++++++++++++++++++++++++++++++------
>   drivers/net/phy/sfp.c       | 16 ++++++++--
>   2 files changed, 68 insertions(+), 13 deletions(-)
> --- a/drivers/net/mdio/mdio-i2c.c
> +++ b/drivers/net/mdio/mdio-i2c.c
> @@ -352,6 +352,54 @@
>   	return 0;
>   }
>   
> +static int i2c_mii_probe_rollball(struct i2c_adapter *i2c)
> +{
> +	u8 data_buf[] = { ROLLBALL_DATA_ADDR, 0x01, 0x00, 0x00 };
> +	u8 cmd_buf[]  = { ROLLBALL_CMD_ADDR, ROLLBALL_CMD_READ };
> +	u8 cmd_addr   = ROLLBALL_CMD_ADDR;
> +	struct i2c_msg msgs[2];
> +	u8 result;
> +	int ret;
> +	int i;
> +
> +	msgs[0].addr  = ROLLBALL_PHY_I2C_ADDR;
> +	msgs[0].flags = 0;
> +	msgs[0].len   = sizeof(data_buf);
> +	msgs[0].buf   = data_buf;
> +	msgs[1].addr  = ROLLBALL_PHY_I2C_ADDR;
> +	msgs[1].flags = 0;
> +	msgs[1].len   = sizeof(cmd_buf);
> +	msgs[1].buf   = cmd_buf;
> +
> +	ret = i2c_transfer_rollball(i2c, msgs, ARRAY_SIZE(msgs));
> +	if (ret < 0)
> +		return -ENODEV;
> +	if (ret)
> +		return ret;
> +
> +	msgs[0].addr  = ROLLBALL_PHY_I2C_ADDR;
> +	msgs[0].flags = 0;
> +	msgs[0].len   = 1;
> +	msgs[0].buf   = &cmd_addr;
> +	msgs[1].addr  = ROLLBALL_PHY_I2C_ADDR;
> +	msgs[1].flags = I2C_M_RD;
> +	msgs[1].len   = 1;
> +	msgs[1].buf   = &result;
> +
> +	for (i = 0; i < 10; i++) {
> +		msleep(20);
> +		ret = i2c_transfer_rollball(i2c, msgs, ARRAY_SIZE(msgs));
> +		if (ret < 0)
> +			return -ENODEV;
> +		if (ret)
> +			return ret;

I think this check is not needed, it seems to me that 
i2c_transfer_rollball() always returns either a negative number, or 
zero. All the calls in i2c_transfer_rollball() end-up returning the 
return value from __i2c_transfer_err(), which is always either negative 
or 0.

There's a similar check below that can be simplified as well

Maxime



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
