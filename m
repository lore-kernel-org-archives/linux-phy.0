Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20A8EC27C5F
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jun 2024 16:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qVsliOyAE0jRrOgvy3dEjhSq3sRwGsrEp0W+tfsvT7M=; b=k/uMSyXkpoIoq80krIcVVJkB/4
	TNRRtIHpjBGHKh+1Nxha+SKZiul6L62ttY25Nv44y54/ssklC2snGiW+XpEESttiWQ3QNoY2lsOkC
	34TLDJl4ZtsRTJp6HWTaGxSJI+YtDlp5NUjYXYHyS5SbIfsRm+m3qOSObZJEz8ZtYhln5/lyQ9ili
	rBjWs+5KdFXU/ONwLHI6OQdumPw5RKtobrqh4n1Y35U47+LAXKpDm9gwGIqbuRc6TRa3+Q2fsNRV4
	Jll2O2nAuFRjYgQkFCzF8vdcHkr0sNJl8aJ3PqDhUXbYuex3imm3wIstSnKCOQNKCLeVZ2jDojXGp
	LOMnxdzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFG30-0000000AYEN-3XyM;
	Thu, 06 Jun 2024 16:33:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFG2y-0000000AYDv-1HNb
	for linux-phy@lists.infradead.org;
	Thu, 06 Jun 2024 16:33:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8C74E61D00;
	Thu,  6 Jun 2024 16:33:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 971F1C2BD10;
	Thu,  6 Jun 2024 16:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717691583;
	bh=J4EIeduNWZgQM5LFuF+pkc025aA/Jgzn8slsa28alkA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cvM4dzlD5Lmahj0VgK0rUTp4s35qgdE/OobeYuZJ1axMZw3aNqtuG/qOY2I4RtJ2c
	 u0H+DCq1jHUQVUhWWBbKBKoTgK/ySxWrnWeA1BDFJNqu5Qi3YPRoyksmOXjvhfNwtp
	 2DlBckNQmkNx6TrqKEjHFPxrv7kQb+A1DOBlhZBRKDVF3d4jYtTP3Bdmix7ENd5lid
	 HqUhXY3Dxfxs32grRtLE3epHZbhESBnxIE5lilN0LKiLuLWAOiKAZIXcBWsvnA5a8I
	 j7epTu7gNUWjYmYvY1Hbn5qUs829phlLo2oSWYH9dyX4p/TVqubwn16yxKBUYeN0Nz
	 VehA4al7ZqJ5g==
Date: Thu, 6 Jun 2024 17:32:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v3 2/4] dt-bindings: display/msm: hdmi: add
 qcom,hdmi-tx-8998
Message-ID: <20240606-sharply-pettiness-7c090530c2a1@spud>
References: <20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr>
 <20240606-hdmi-tx-v3-2-9d7feb6d3647@freebox.fr>
MIME-Version: 1.0
In-Reply-To: <20240606-hdmi-tx-v3-2-9d7feb6d3647@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_093304_407001_AE56A2A8 
X-CRM114-Status: UNSURE (   7.69  )
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
Content-Type: multipart/mixed; boundary="===============8007475483272887919=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8007475483272887919==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cvI1T3XU3X9BFDJc"
Content-Disposition: inline


--cvI1T3XU3X9BFDJc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 06, 2024 at 06:07:48PM +0200, Marc Gonzalez wrote:
> HDMI TX block embedded in the APQ8098.
>=20
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--cvI1T3XU3X9BFDJc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmHkuAAKCRB4tDGHoIJi
0tXCAQDsUcs12fPLOgkac1DArtDCK6naogmrtsRLhRdX4CTCFQEA+qWNDZv+aF51
v0iE15iZ3VqHMiaYVXwOclhCbq5qpA8=
=Jq6C
-----END PGP SIGNATURE-----

--cvI1T3XU3X9BFDJc--


--===============8007475483272887919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8007475483272887919==--

