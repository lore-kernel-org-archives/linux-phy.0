Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 679B8E77188
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 13:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gWP2rRZ9vRtxbQfUcvw8AoTB6k7Vt2qFANa3LR/hHLU=; b=464S7SYYKd6HcaP+fNBojlXCXN
	4cArKjB9Au87vo6EXQRVkbegbUPu64UjxeRsli1yGSr02o04gQf+iQRPwel9g85rZ697CnTCrHBuy
	6lw1iQty6LQY/pZRA1WjzF+alNjtq+P+ZZ+0Sy7Vny2waGkdlyKVTRglKxxOLW30le5tKZgkpQyLY
	StuLDAAf0z7/dfNWWKjMUEYZ9XVUarN3lM7OrBYCtULwXKcUUKW8XqME+P9wEEu2CU46mpFHiHeJo
	21c3Go3UuySgaiPV29lZnjgVyYx4W47xyV1gpIgNveURBGwGOILIxqYVmiqWK6RX8Ofo9Hz2Fzpro
	jxBt/UaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSG2c-00000005I4j-0ioc;
	Mon, 30 Dec 2024 13:42:42 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSG2Z-00000005I3v-1NVQ
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 13:42:40 +0000
Received: from mail.ideasonboard.com (unknown [IPv6:2401:4900:1c66:4ee5:79f0:305d:67e0:677a])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 73A4D3DC;
	Mon, 30 Dec 2024 14:41:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1735566109;
	bh=fwnWb8RslhVkwEGH3xkBypJMbHABguhhWsPyKEbTS8A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=amZq7UVJxZmPdJN1MWW44lZn32n25NG4RXpuPAAkxUq37kA2ccsM9nAkDB7//xVYi
	 EIqZ1Hy7Z/Mp4BWu8TSy3gBl193zMVrAEtASZh/OzUeK1WBXFraA4u6LFCgob0UuJj
	 WEmiXyrP/l/hWYVmUWQExTCAhv44WztmHi9Xj1OU=
Date: Mon, 30 Dec 2024 19:12:31 +0530
From: Jai Luthra <jai.luthra@ideasonboard.com>
To: Devarsh Thakkar <devarsht@ti.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mripard@kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com, 
	vigneshr@ti.com, aradhya.bhatia@linux.dev, s-jain1@ti.com, r-donadkar@ti.com, 
	tomi.valkeinen@ideasonboard.com, j-choudhary@ti.com, h-shenoy@ti.com, praneeth@ti.com, 
	u-kumar1@ti.com
Subject: Re: [PATCH] phy: cadence: cdns-dphy: Fix PLL lock and common ready
 poll timeout
Message-ID: <gvqa3g7cv2di3je2q3xiojkzrfedlh2ugqrtnh5vagbtvo5w3a@a42vb32ds74s>
References: <20241230125319.941372-1-devarsht@ti.com>
MIME-Version: 1.0
In-Reply-To: <20241230125319.941372-1-devarsht@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_054239_517112_1C6059FC 
X-CRM114-Status: GOOD (  32.45  )
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
Content-Type: multipart/mixed; boundary="===============9070772337644918347=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============9070772337644918347==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4zizhhr3ngdqa54z"
Content-Disposition: inline


--4zizhhr3ngdqa54z
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] phy: cadence: cdns-dphy: Fix PLL lock and common ready
 poll timeout
MIME-Version: 1.0

Hi Devarsh,

Thanks for the patch, must have been a fun debug :)

On Dec 30, 2024 at 18:23:19 +0530, Devarsh Thakkar wrote:
> After adding the initial checks for register poll timeout and traces for
> measuring total initialization time [1], it was observed that the driver
> was timing out while polling for PLL lock up to happen and O_CMN_READY bit
> to be set:
>=20
> "[ 19.967949] phy phy-301c0000.phy.2: Timed out waiting for DPHY PLL lock
> assertion [ 19.968976] phy phy-301c0000.phy.2: Timed out waiting for
> o_cmn_ready assertion"
>=20
> this also increased the overall DSIT Tx + DPHY Tx initialization time whi=
ch
> was observed as 271ms (20.238306 - 19.966884) on TI's AM62L SoC:
>=20
> "kworker/u8:1-29      [001] .....    19.966884:
> cdns_dsi_bridge_atomic_pre_enable: Initializing DSITx and DPHY Tx
> kworker/u8:1-29      [001] .....    20.238306:
> cdns_dsi_bridge_atomic_pre_enable: Initialization complete"
>=20
> This was caused due to multiple issues as discussed below along with the
> updates done to fix those issues :
>=20
> 1) PLL lockup and O_CMN_READY assertion can only happen after common state
>    machine gets enabled, but driver was polling them before the common
>    state machine was enabled. To fix this, add new function callbacks for
>    polling on PLL lock and O_CMN_READY assertion and call them only after
>    common state machine gets enabled.
>=20
> 2) The cadence DPHY IP registers (as described in J721E TRM [2]) has
>    default reset values for register fields in some of the registers
>    which were getting reset to 0 as driver was not preserving them and
>    overwriting those bits to 0 while updating the registers thus impacting
>    the overall PLL lockup time. For e.g. DPHY_TX_CMN0_CMN_DIG_TBIT2 has
>    bits 1-8 used for PLL wait time calibrations with default value as 0x1=
4h
>    and DPHY_TX_CMN0_CMN_DIG_TBIT10 has bits 27-20 used for PWM Byteclock
>    divider which is default set to 0x8. To avoid resetting these register
>    bit-fields, perform read-modify-write while updating above registers.

IMHO these are separate changes, and thus should be separate patches,=20
even if they are both done to reduce the time spent in the wait loop.

Ideally first patch to fix (2) across the driver, checking if there are=20
any other registers with default values that are being overwritten.

And the second patch to fix (1)

>=20
> With above updates, the PLL lockup and O_CMN_READ timeout assertion is not
> observed anymore and DSI Tx + DPHY Tx initialization time is reduced to
> 394 us (19.435259 - 19.434861) as shared below:
>=20
> "kworker/u8:6-74      [000] .....    19.434861:
> cdns_dsi_bridge_atomic_pre_enable: Initializing DSITx and DPHY Tx
> kworker/u8:6-74      [000] .....    19.435259:
> cdns_dsi_bridge_atomic_pre_enable: Initialization complete"
>=20
> NOTE: This is tested on top of existing series on cadence DSI under review
> [4].
>=20
> Full profiling logs before and after changes done also attached here [3].
>=20
> [1]: Profiling patch:
> Link: https://gist.github.com/devarsht/f3bcb6a2e7e97a0667c817cfa208ed4c
>=20
> [2]: J721E TRM Section 12.8.4 DPHY_TX Registers:
> Link: https://www.ti.com/lit/zip/spruil1
>=20
> [3]: Profiling logs:
> Link: https://gist.github.com/devarsht/bc84be106209c373a0be4e33b5f019bb
>=20
> [4]: Tested on top of existing cadence DSI series:
> Link: https://lore.kernel.org/all/20241019195411.266860-1-aradhya.bhatia@=
linux.dev
>=20
> Cc: stable@vger.kernel.org
> Fixes: 7a343c8bf4b5 ("phy: Add Cadence D-PHY support")
> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> ---
>  drivers/phy/cadence/cdns-dphy.c | 49 ++++++++++++++++++++++++++-------
>  1 file changed, 39 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-d=
phy.c
> index dddb66de6dba..c248a506ddc2 100644
> --- a/drivers/phy/cadence/cdns-dphy.c
> +++ b/drivers/phy/cadence/cdns-dphy.c
> @@ -98,6 +98,8 @@ struct cdns_dphy_ops {
>  				 enum cdns_dphy_clk_lane_cfg cfg);
>  	void (*set_pll_cfg)(struct cdns_dphy *dphy,
>  			    const struct cdns_dphy_cfg *cfg);
> +	void (*wait_for_pll_lock)(struct cdns_dphy *dphy);
> +	void (*wait_for_cmn_ready)(struct cdns_dphy *dphy);
>  	unsigned long (*get_wakeup_time_ns)(struct cdns_dphy *dphy);
>  };
> =20
> @@ -191,6 +193,18 @@ static unsigned long cdns_dphy_get_wakeup_time_ns(st=
ruct cdns_dphy *dphy)
>  	return dphy->ops->get_wakeup_time_ns(dphy);
>  }
> =20
> +static void cdns_dphy_wait_for_pll_lock(struct cdns_dphy *dphy)
> +{
> +	if (dphy->ops->wait_for_pll_lock)
> +		dphy->ops->wait_for_pll_lock(dphy);
> +}
> +
> +static void cdns_dphy_wait_for_cmn_ready(struct cdns_dphy *dphy)
> +{
> +	if (dphy->ops->wait_for_cmn_ready)
> +		dphy->ops->wait_for_cmn_ready(dphy);
> +}
> +
>  static unsigned long cdns_dphy_ref_get_wakeup_time_ns(struct cdns_dphy *=
dphy)
>  {
>  	/* Default wakeup time is 800 ns (in a simulated environment). */
> @@ -212,7 +226,7 @@ static void cdns_dphy_ref_set_pll_cfg(struct cdns_dph=
y *dphy,
>  	writel(DPHY_CMN_FBDIV_FROM_REG |
>  	       DPHY_CMN_FBDIV_VAL(fbdiv_low, fbdiv_high),
>  	       dphy->regs + DPHY_CMN_FBDIV);
> -	writel(DPHY_CMN_PWM_HIGH(6) | DPHY_CMN_PWM_LOW(0x101) |
> +	writel(readl(dphy->regs + DPHY_CMN_PWM) | DPHY_CMN_PWM_HIGH(6) | DPHY_C=
MN_PWM_LOW(0x101) |
>  	       DPHY_CMN_PWM_DIV(0x8),
>  	       dphy->regs + DPHY_CMN_PWM);
>  }
> @@ -232,13 +246,11 @@ static unsigned long cdns_dphy_j721e_get_wakeup_tim=
e_ns(struct cdns_dphy *dphy)
>  static void cdns_dphy_j721e_set_pll_cfg(struct cdns_dphy *dphy,
>  					const struct cdns_dphy_cfg *cfg)
>  {
> -	u32 status;
> -
>  	/*
>  	 * set the PWM and PLL Byteclk divider settings to recommended values
>  	 * which is same as that of in ref ops
>  	 */
> -	writel(DPHY_CMN_PWM_HIGH(6) | DPHY_CMN_PWM_LOW(0x101) |
> +	writel(readl(dphy->regs + DPHY_CMN_PWM) | DPHY_CMN_PWM_HIGH(6) | DPHY_C=
MN_PWM_LOW(0x101) |
>  	       DPHY_CMN_PWM_DIV(0x8),
>  	       dphy->regs + DPHY_CMN_PWM);
> =20
> @@ -249,13 +261,25 @@ static void cdns_dphy_j721e_set_pll_cfg(struct cdns=
_dphy *dphy,
> =20
>  	writel(DPHY_TX_J721E_WIZ_LANE_RSTB,
>  	       dphy->regs + DPHY_TX_J721E_WIZ_RST_CTRL);
> +}
> =20
> -	readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_PLL_CTRL, status,
> -			   (status & DPHY_TX_WIZ_PLL_LOCK), 0, POLL_TIMEOUT_US);
> +static void cdns_dphy_j721e_wait_for_pll_lock(struct cdns_dphy *dphy)
> +{
> +	u32 status;
> +
> +	if (readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_PLL_CTRL, status,
> +			       status & DPHY_TX_WIZ_PLL_LOCK, 0, POLL_TIMEOUT_US))
> +		dev_err(&dphy->phy->dev, "Timed out waiting for DPHY PLL lock assertio=
n\n");
> +}
> =20
> -	readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_STATUS, status,
> -			   (status & DPHY_TX_WIZ_O_CMN_READY), 0,
> -			   POLL_TIMEOUT_US);
> +static void cdns_dphy_j721e_wait_for_cmn_ready(struct cdns_dphy *dphy)
> +{
> +	u32 status;
> +
> +	if (readl_poll_timeout(dphy->regs + DPHY_TX_J721E_WIZ_STATUS, status,
> +			       status & DPHY_TX_WIZ_O_CMN_READY, 0,
> +			       POLL_TIMEOUT_US))
> +		dev_err(&dphy->phy->dev, "Timed out waiting for o_cmn_ready assertion\=
n");
>  }
> =20
>  static void cdns_dphy_j721e_set_psm_div(struct cdns_dphy *dphy, u8 div)
> @@ -278,6 +302,8 @@ static const struct cdns_dphy_ops j721e_dphy_ops =3D {
>  	.get_wakeup_time_ns =3D cdns_dphy_j721e_get_wakeup_time_ns,
>  	.set_pll_cfg =3D cdns_dphy_j721e_set_pll_cfg,
>  	.set_psm_div =3D cdns_dphy_j721e_set_psm_div,
> +	.wait_for_pll_lock =3D cdns_dphy_j721e_wait_for_pll_lock,
> +	.wait_for_cmn_ready =3D cdns_dphy_j721e_wait_for_cmn_ready,
>  };
> =20
>  static int cdns_dphy_config_from_opts(struct phy *phy,
> @@ -384,9 +410,12 @@ static int cdns_dphy_power_on(struct phy *phy)
>  	clk_prepare_enable(dphy->pll_ref_clk);
> =20
>  	/* Start TX state machine. */
> -	writel(DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
> +	writel(readl(dphy->regs + DPHY_CMN_SSM) | DPHY_CMN_SSM_EN | DPHY_CMN_TX=
_MODE_EN,
>  	       dphy->regs + DPHY_CMN_SSM);
> =20
> +	cdns_dphy_wait_for_pll_lock(dphy);
> +	cdns_dphy_wait_for_cmn_ready(dphy);
> +
>  	return 0;
>  }
> =20
> --=20
> 2.39.1
>=20

--=20
Thanks,
Jai

--4zizhhr3ngdqa54z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEETeDYGOXVdejUWq/FQ96R+SSacUUFAmdyo0cACgkQQ96R+SSa
cUWfSg//VbqnxSWxJ3kOSEK89/o3B8arLorYPpax7yz+g5WsltJs7OgNC2s2eJfJ
OdmRXHyBPnaMA9XqI/dvuCpTISm/a1wi9wm+0RruzvdQXG/Flcw17HBOWuK4+VyB
IGxIX4R7XKR2l0r1MJ+CjyLQvDSt36ktg29s9ArpZ7hyBIB3kQ+n8wSjkTRqEY74
BjrXkvskokDsiEfWjLyyzL8KyAWot9gUNKVoYHiqyzDI14Xj5P4vTsna+D0NySWQ
gsxw4phXL8oGhHO7wzomEA3O1FD8MNmN4o/FcIt9P1hbLJfWLNF60swUAqY4Eao3
yF6aD21hR3pmOkZ3854Fup/XDgKFP8QH3YA9JkFzqc4zKvVN6qbItb9HV1P2dgNe
4WsSlpbfUYu68t/KIuTt6Z7Ppgxx8U1UpK5pC5drfFWsOtwJXY4h1Te6N0YG0rl1
2Wudg7FXnnILuk1pn24z6hPSPGFcDpt+kuFpFYG9rAXbM+smtdUKs3uHRQWviQWI
ZQ8rgUid2UyEV96VzeVnkU/fNPOT4IzYgx22hnloXH6MHISkdnb7Wm3P8Zu0R92r
n0qcOomseb02buNcSUiQ1Ou0M6QpcHabMe0GclM/qn3AOOlU1e16ekt7ShKB/pS5
1yoUxAHzyQ2EJcUJ+/jALqfyOoRt0B0XDU99qEgOGNk1nroSm+w=
=jmDt
-----END PGP SIGNATURE-----

--4zizhhr3ngdqa54z--


--===============9070772337644918347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============9070772337644918347==--

