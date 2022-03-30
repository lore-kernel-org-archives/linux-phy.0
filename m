Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20DBDC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PjhSmPbNvV2aExT3vbHRPgPMcvMyYXByMukLxvX7HLw=; b=c0Uk29jepucK9A17TNjjYNEdzk
	u+H3UIdHLG2AksmVjlLT7rE/42n30SQBdUYQNjDu1cGkrzHjOApDVIvlWo2KpvwhN6+7SsfzMtFg0
	RQ2hRGYjg3eHW3R/GVzMsVdGn47zTWCoMCmfmGUW8K6lIK02U7GMky3L2NOriYXUqIrn+F3/dSeKr
	GXu9DmGuaFpyJHIp9PFdU/cyBkqd//+GltKEPGCpwgtcgdQfAGEzN0UiyNOY6EahgWjeB/WtengGS
	KXMBi79AxqrVdv5Z0QNrpi/ke3ejE2wb8+ljKTYQZ0wwYXWUXVTexeAZ/youMazJmZDl7JVAV/6IT
	VhcVLCnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZb0m-00Go4W-Ij; Wed, 30 Mar 2022 16:17:32 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZb0k-00Go3y-ST
 for linux-phy@lists.infradead.org; Wed, 30 Mar 2022 16:17:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 74C6DB81D87;
 Wed, 30 Mar 2022 16:17:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1E24C340EC;
 Wed, 30 Mar 2022 16:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648657048;
 bh=Q+USGHsR1S1m9ZvzFcgjt7zp0ViNdGcvN3RiBCTFNSM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O8S0hjOfWVpcL2d8Ii4T6o+AuXfYtsfA5ix/uX/rPyjwS9bxhfO1i86FHjIdh+puv
 I/W7n5WESGfHjS6nF6gp5uPbz0DSJdmTwsJmdaL3RDAl0eVJBdNT4exUa1F1pmWqy/
 L5TsjMqr9tZXP8WmWGuRJBh+7CyOBurO/HruWy2Zqf2pbxXdUFXjOULx0WFZpkDRTD
 QVfwF0fhifJNU26ElPMrsxlNMoMiEQy7tfASjXepRDVYCV/+WyR1iuE1rYjYLwRcTQ
 3WMZtglRmT0m/phSC+R4aYQMOKh4xxVnG0cpZxbkZbFGBsB3JmOU/q0kciwlqmv+sV
 2kaKH/mpSSGAA==
Date: Wed, 30 Mar 2022 17:17:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Georgi Djakov <djakov@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Dmitry Osipenko <digetx@gmail.com>, linux-iio@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-mmc@vger.kernel.org,
 linux-tegra@vger.kernel.org, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: Fix incomplete if/then/else schemas
Message-ID: <YkSCj1wT8E/uAdbU@sirena.org.uk>
References: <20220330145741.3044896-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20220330145741.3044896-1-robh@kernel.org>
X-Cookie: Two is company, three is an orgy.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_091731_084329_8E70FF1B 
X-CRM114-Status: GOOD (  11.23  )
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
Content-Type: multipart/mixed; boundary="===============7583559843302427880=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7583559843302427880==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TNgjpwjwvAc49yPZ"
Content-Disposition: inline


--TNgjpwjwvAc49yPZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 30, 2022 at 09:57:41AM -0500, Rob Herring wrote:
> A recent review highlighted that the json-schema meta-schema allows any
> combination of if/then/else schema keywords even though if, then or else
> by themselves makes little sense. With an added meta-schema to only
> allow valid combinations, there's a handful of schemas found which need
> fixing in a variety of ways. Incorrect indentation is the most common
> issue.

Acked-by: Mark Brown <broonie@kernel.org>

--TNgjpwjwvAc49yPZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmJEgo4ACgkQJNaLcl1U
h9CMwQf/f8YiUiMex+FwfC/kdvXglTNhRApaQRU6OtuSmz5UEnBb6O6YMmQLA4q4
P3oQ1eCCQFXxr8+P7iqLuM+N4MRXPNabE1q82boC3jBah9e8mvDKJtNZJlz/kRXD
QazSWyj0T9UQpnveVimQMjtE/So0MgZSI/KLiB/hjhG+5Be3Gq5Da9HfdMFwvtA1
nrqW5IcduprA2fSUgucuUddybp9AoCJr+cvoFPx3Zw/1Nnjb/7xWP6TYeh2EpRCp
4z1q0JIEFpwa0vCan+4S1IF9eUjHLTmhnUt3yWgERmRNK7t9GKrhobfSAuK8pmky
vpPGzlJMA9MiagHlb4EugpvmhYzNuQ==
=41nO
-----END PGP SIGNATURE-----

--TNgjpwjwvAc49yPZ--


--===============7583559843302427880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7583559843302427880==--

