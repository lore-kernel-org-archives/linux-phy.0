Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E9BFC36000
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 12:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oUB0P01VCEm7pvrLJnKKi7iY9zHq4pRB0++o1R6gYEE=; b=ww9LVNNrT+dAStGhExhP/gK9l6
	OZLA/aOMid1DK2pjInG+hwpYNM4tQuHTSJ8wQIe2KIU/b2GaUuwICV4SvofRcBhIFW388WXM2jBD5
	kyX815oJhfEr7uW+aV98y55tdIx7kCc9sQTI8dPrrAj/qGsHrs9whFlzojm2tpa8h5e1TiNkmc2pU
	NPU2p0/FZVfvAl2ZMv4y9aw2wIeZ/Gbck5WkI9y5I75ODDLJZLgyYORMWrVwtI/TyZvfVZLrrAXsT
	LRlHc9pi/JCzSEn+oi5AdiV+fdh+0hgihcBJuUIgnz+EmRh7TvZD/6WEYXyDpx0WTjHD18ZSY7GGM
	1Mbzb4+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvbNt-0000000Ekaq-0lKK;
	Fri, 21 Mar 2025 12:21:57 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvbNq-0000000EkaD-2heR
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 12:21:55 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-43948021a45so14782785e9.1
        for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 05:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742559712; x=1743164512; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LeLp0PPN12i4t9OzH+eFQ8hoce13ODzGoYOiG4kZka4=;
        b=RlBADVZbwaHc6uA6UXHMynviP30e16VYLYsTNilkJTKaKuaFBMgKZRgItQ7idj6mho
         x7LhVJMLijKq4Zuu3wL2jceiLGznh7/Ej0iyAsD3rObc5pR+d/z4V8tW0Lc1ottZfvUd
         oazklyEeewBNhZUs7jpV4ggBTHPEvSp8VgC2Vu48jXV66ByhhUTCkSYcVXMJQ00e56jE
         Cx5gMAdZMGMYIfvDQEK56MqqcRdOfiw2zZTuewyqiCNVtgoiKixBwrE65ltUEfwbe6gJ
         8gcAsTgpspxjzpM9JmKOlhclD3IIi7v0KbpYKMfRQqb9DjZ8A3C01K16KLfQA4jTaX7m
         lviw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742559712; x=1743164512;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LeLp0PPN12i4t9OzH+eFQ8hoce13ODzGoYOiG4kZka4=;
        b=P9Lzj39ioeOoGZ07yzg8lpJhGyYWZ/QiYT/pNJ9vKb5i4zOqV8tFzEebhDC0kLix23
         YhSjGmLXuaXx4RtF8VPZPfqRF8P5jth/DKZh8pV82ItF2Q9qwmCwx0w2B+zBpWB+jDdy
         C0ut7181g5OuVieLexvYxCMWT0f3+hTSrDtCxG2mINZV41rM0utc2xJKxL9HWW/Pyafx
         jPhGxWCoAm493r4OtcnaurWTnEZAjL/hST9daVgXnsqHYYoOsmExL0AS4Sw2waOvilO0
         0OVIC2CI2WcUcHWZoy+JjYxrnYRJDgaUw4X2OU5abG+U+C+FbMwJDjaDFYvyjyeYp7fH
         CMxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxfAz1Sko49egOA7NF6VL7ed0y2Tlu52dn+IP/XkwVSwQEIwkPWlXuwN2ckjfyQZsc8yWvA0Bm5Wc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwDCPPBVIzgl8Okk27NFHZtHEyvjeOjHJ6fgcRjAIZputh8+nWI
	ht/+Z4tKpYbv4ALMsqkIyU4L7/L/npn5gk0z2a3SdS2mBDATw/qG+Qy/KA==
X-Gm-Gg: ASbGncvEMEmMWQXol6MwZ0rvchlbrD5x7oQB62Bp+H58S1a2eDIQ6nYI4EJFQxwlwyy
	2gxrlkAmtA7cWpOZZs0mtJniFn1OJGtJAtiSCHnNffMQ9mpUpU6nWZ91aY0MyCb0Rv7OSWeAX2D
	7Asx0RYPdEz9WDDLlxHbCtFB+AfMV94b8RcW0vSu6EaDlucNXv7qr/S0JkJhcevF9/ZGaz+ZgTb
	x4McRQSrXcpYV1aWWI27m4xq/QYsy30Kl65iNyQtAVJQ4YcA1YnedGngxakQZ7Tc1KzsC15Edyq
	3DNk3FO3sii9G9id9F4NYnZCPy0cyfV2/ccGjHeVbmVkWQIkp7G+JRvNmKfwx5g21DCtEyPipvu
	nwnCcidmx6DnDRgnnHMCVTxB0B7tv4e4=
X-Google-Smtp-Source: AGHT+IHx1O01egCAj9TrUHG+NFBJ663ImNAVCdmyvggpAHypZuF7DKpiI8MNrBJxmhIty6eHtYnVHQ==
X-Received: by 2002:a05:600c:1d9f:b0:43c:eeee:b713 with SMTP id 5b1f17b1804b1-43d50a201a9mr28537605e9.20.1742559712030;
        Fri, 21 Mar 2025 05:21:52 -0700 (PDT)
Received: from orome (p200300e41f4bef00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f4b:ef00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9e6544sm2251716f8f.68.2025.03.21.05.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 05:21:50 -0700 (PDT)
Date: Fri, 21 Mar 2025 13:21:48 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Wayne Chang <waynec@nvidia.com>
Cc: jonathanh@nvidia.com, jckuo@nvidia.com, vkoul@kernel.org, 
	kishon@kernel.org, linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/1] phy: tegra: xusb: Use a bitmask for UTMI pad power
 state tracking
Message-ID: <rxr3a5gzlmb6z2x36bwiy6lprdbrjgiojyoqznybyzglpeor7b@gy43enunoxyx>
References: <20250314073348.3705373-1-waynec@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20250314073348.3705373-1-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_052154_684915_3A77FB33 
X-CRM114-Status: GOOD (  27.45  )
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
Content-Type: multipart/mixed; boundary="===============6528068947123342226=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6528068947123342226==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="imvx56lho6xkya3j"
Content-Disposition: inline


--imvx56lho6xkya3j
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/1] phy: tegra: xusb: Use a bitmask for UTMI pad power
 state tracking
MIME-Version: 1.0

On Fri, Mar 14, 2025 at 03:33:48PM +0800, Wayne Chang wrote:
> The current implementation uses bias_pad_enable as a reference count to
> manage the shared bias pad for all UTMI PHYs. However, during system
> suspension with connected USB devices, multiple power-down requests for
> the UTMI pad result in a mismatch in the reference count, which in turn
> produces warnings such as:
>=20
> [  237.762967] WARNING: CPU: 10 PID: 1618 at tegra186_utmi_pad_power_down=
+0x160/0x170
> [  237.763103] Call trace:
> [  237.763104]  tegra186_utmi_pad_power_down+0x160/0x170
> [  237.763107]  tegra186_utmi_phy_power_off+0x10/0x30
> [  237.763110]  phy_power_off+0x48/0x100
> [  237.763113]  tegra_xusb_enter_elpg+0x204/0x500
> [  237.763119]  tegra_xusb_suspend+0x48/0x140
> [  237.763122]  platform_pm_suspend+0x2c/0xb0
> [  237.763125]  dpm_run_callback.isra.0+0x20/0xa0
> [  237.763127]  __device_suspend+0x118/0x330
> [  237.763129]  dpm_suspend+0x10c/0x1f0
> [  237.763130]  dpm_suspend_start+0x88/0xb0
> [  237.763132]  suspend_devices_and_enter+0x120/0x500
> [  237.763135]  pm_suspend+0x1ec/0x270
>=20
> The root cause was traced back to the dynamic power-down changes
> introduced in commit a30951d31b25 ("xhci: tegra: USB2 pad power controls"=
),
> where the UTMI pad was being powered down without verifying its current
> state. This unbalanced behavior led to discrepancies in the reference
> count.
>=20
> To rectify this issue, this patch replaces the single reference counter
> with a bitmask, renamed to utmi_pad_enabled. Each bit in the mask
> corresponds to one of the four USB2 PHYs, allowing us to track each pad's
> enablement status individually.
>=20
> With this change:
>   - The bias pad is powered on only when the mask is clear.
>   - Each UTMI pad is powered on or down based on its corresponding bit
>     in the mask, preventing redundant operations.
>   - The overall power state of the shared bias pad is maintained
>     correctly during suspend/resume cycles.
>=20
> Cc: stable@vger.kernel.org
> Fixes: a30951d31b25 ("xhci: tegra: USB2 pad power controls")
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> ---
>  drivers/phy/tegra/xusb-tegra186.c | 25 +++++++++++++++++--------
>  1 file changed, 17 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-t=
egra186.c
> index fae6242aa730..77bb27a34738 100644
> --- a/drivers/phy/tegra/xusb-tegra186.c
> +++ b/drivers/phy/tegra/xusb-tegra186.c
> @@ -237,6 +237,8 @@
>  #define   DATA0_VAL_PD				BIT(1)
>  #define   USE_XUSB_AO				BIT(4)
> =20
> +#define TEGRA_UTMI_PAD_MAX 4
> +
>  #define TEGRA186_LANE(_name, _offset, _shift, _mask, _type)		\
>  	{								\
>  		.name =3D _name,						\
> @@ -269,7 +271,7 @@ struct tegra186_xusb_padctl {
> =20
>  	/* UTMI bias and tracking */
>  	struct clk *usb2_trk_clk;
> -	unsigned int bias_pad_enable;
> +	DECLARE_BITMAP(utmi_pad_enabled, TEGRA_UTMI_PAD_MAX);
> =20
>  	/* padctl context */
>  	struct tegra186_xusb_padctl_context context;
> @@ -605,7 +607,7 @@ static void tegra186_utmi_bias_pad_power_on(struct te=
gra_xusb_padctl *padctl)
> =20
>  	mutex_lock(&padctl->lock);
> =20
> -	if (priv->bias_pad_enable++ > 0) {
> +	if (!bitmap_empty(priv->utmi_pad_enabled, TEGRA_UTMI_PAD_MAX)) {
>  		mutex_unlock(&padctl->lock);
>  		return;
>  	}
> @@ -669,12 +671,7 @@ static void tegra186_utmi_bias_pad_power_off(struct =
tegra_xusb_padctl *padctl)
> =20
>  	mutex_lock(&padctl->lock);
> =20
> -	if (WARN_ON(priv->bias_pad_enable =3D=3D 0)) {
> -		mutex_unlock(&padctl->lock);
> -		return;
> -	}
> -
> -	if (--priv->bias_pad_enable > 0) {
> +	if (!bitmap_empty(priv->utmi_pad_enabled, TEGRA_UTMI_PAD_MAX)) {
>  		mutex_unlock(&padctl->lock);
>  		return;
>  	}
> @@ -697,6 +694,7 @@ static void tegra186_utmi_pad_power_on(struct phy *ph=
y)
>  {
>  	struct tegra_xusb_lane *lane =3D phy_get_drvdata(phy);
>  	struct tegra_xusb_padctl *padctl =3D lane->pad->padctl;
> +	struct tegra186_xusb_padctl *priv =3D to_tegra186_xusb_padctl(padctl);
>  	struct tegra_xusb_usb2_port *port;
>  	struct device *dev =3D padctl->dev;
>  	unsigned int index =3D lane->index;
> @@ -705,6 +703,9 @@ static void tegra186_utmi_pad_power_on(struct phy *ph=
y)
>  	if (!phy)
>  		return;
> =20
> +	if (test_bit(index, priv->utmi_pad_enabled))
> +		return;

Don't we need to take the padctl->lock mutex before this...

> +
>  	port =3D tegra_xusb_find_usb2_port(padctl, index);
>  	if (!port) {
>  		dev_err(dev, "no port found for USB2 lane %u\n", index);
> @@ -724,18 +725,24 @@ static void tegra186_utmi_pad_power_on(struct phy *=
phy)
>  	value =3D padctl_readl(padctl, XUSB_PADCTL_USB2_OTG_PADX_CTL1(index));
>  	value &=3D ~USB2_OTG_PD_DR;
>  	padctl_writel(padctl, value, XUSB_PADCTL_USB2_OTG_PADX_CTL1(index));
> +
> +	set_bit(index, priv->utmi_pad_enabled);

=2E.. and release it here? Otherwise we might end up testing, setting and/
or clearing from two pads concurrently and loose consistency.

>  }
> =20
>  static void tegra186_utmi_pad_power_down(struct phy *phy)
>  {
>  	struct tegra_xusb_lane *lane =3D phy_get_drvdata(phy);
>  	struct tegra_xusb_padctl *padctl =3D lane->pad->padctl;
> +	struct tegra186_xusb_padctl *priv =3D to_tegra186_xusb_padctl(padctl);
>  	unsigned int index =3D lane->index;
>  	u32 value;
> =20
>  	if (!phy)
>  		return;
> =20
> +	if (!test_bit(index, priv->utmi_pad_enabled))
> +		return;
> +

Same here...

>  	dev_dbg(padctl->dev, "power down UTMI pad %u\n", index);
> =20
>  	value =3D padctl_readl(padctl, XUSB_PADCTL_USB2_OTG_PADX_CTL0(index));
> @@ -748,6 +755,8 @@ static void tegra186_utmi_pad_power_down(struct phy *=
phy)
> =20
>  	udelay(2);
> =20
> +	clear_bit(index, priv->utmi_pad_enabled);

and here.

Thierry

--imvx56lho6xkya3j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmfdWdsACgkQ3SOs138+
s6EcPg/+PgMaghXQ/5SDqxhhmBHw/d0cB5stuVU/Rrn0N8I6FsXEPF7VTTGu50+X
vNMHLUuOBqGg43IdpBpX2t/OEqnSY+FgejgizfqBh/kYT0PjxIqoq6WXYVoqNjfD
VVkKIt8yz2nKZ2o9F9vnjjmc6zhiWvujsxOoX/TPS/BcKFpjV1Sy4r/Q5KHlDx2r
DFLdUg4vg35VsHNLjrKwUXIS+wohnM3l1xRJq5IGrFgDl6gBJGq/EuWlbQ8OzoYd
kcRZOUgbXPZ5IFlIwE2Nyi6LNCWYabAnWItB5cJZeSa8JriaIYtwbAcOhxmF5D3s
tAX/J42Sr3cbx3JIlKL6u3FsdWxlijA/zP4IJaZSYE77dv63Sj5ae7tdXfixgo50
THBQ5e7Re/bAUvghN+G9weUqi0yqzFYfVi8nSNWovpLZdc90kAKN1R8HePqT1pfG
ZGi4CJFU9mEMXs5dwKjV01JN5qg6FE6+2ksinM5FT8i6F8sm2QtVsMO+u9Rw5VUk
uNOQnkaquCmqlBp7eFmrq5ICbiZGZI7Pc3f2o+/C/gzaSESEPJYlwAUBKzmmND8O
EsUMjv387LYF1Bi0JI46PIIvxHg2fsUxzkDvf8EOi7o+zTcM8Q8w1F1PNsXjirn6
0BbeFXeiUIykiEr2RcTFcFJD1KeKhurWw2LOObZ/IUae1PA4ygM=
=SVsF
-----END PGP SIGNATURE-----

--imvx56lho6xkya3j--


--===============6528068947123342226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6528068947123342226==--

