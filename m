Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A40E6E7716E
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 15:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhSow348tZuq2GAd+dClBAF/kp+vkDqx47zim6j5NlE=; b=oE+N0sDsK3Y1BV
	xly0BB/fonlugrSY5CT4hpq5g5mpX6uGH7Sk6omem8oLZK+PDbkw0BgUCmL7aD7xWeO4UwqLSUB3n
	9q+4yaeATHgdZ0MbfZUoFmrTJoF5XhaU7kA9IB513QYgbDU2bQ1E0XxMq7Xhi7jpO6tB2dG8jXKxy
	Vvq3iYr6XR/E8nk8kJhrd2Ucj5TxyjOLFu7ONGYee9w9IcB+7HIl8xRoziUpE+sltN2a85k4DDxV8
	srn6vhvWbMy/5XusNh5fIcaLuzjR6VI5HXWHaff7zWxOaqHlsHow+dP22TbLleeY/42R1JB4VtwCk
	ICh4q032LM3hQjTzVioA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIquv-0000000Cvox-31UY;
	Wed, 04 Dec 2024 15:03:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIqrH-0000000Cv4z-1UB5;
	Wed, 04 Dec 2024 15:00:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7718E5C6195;
	Wed,  4 Dec 2024 14:59:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA2D0C4CECD;
	Wed,  4 Dec 2024 15:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733324406;
	bh=Xkir4c9pjGx9lAg+oTZfmHXzCTXKE5W+j5Z+hVglI5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xo7UBX96c7oKyl5E7KZcIqRE76ZpMiwsKs9EejxH5cyzudDkdN2RgIxHNYgVOCGeR
	 Un7WeqtDYPR+ent/Qye4fBDcANa89ae7Jwi9pCTkxKvUG78wYnU39RZFNXM5v291j+
	 kP5oy3MCx3gyc76zqPHUGcsftsfru/0fRn0OovMuDQwycZNOxAmuy+gr4TQofL9hO1
	 AqaCT5Lyqsi2G438+RBbuqGBP+b7LCjUIIaHk6BDPgE+cS/BMwPt+nm2h1ABRgzrvS
	 eRdArIuyT0HD2z/klQB+q0oiyfaZzXXXADi+1urK3OvrxVBJr+YvsYTvagAIStKabl
	 IRL7E2IWq/B6g==
Date: Wed, 4 Dec 2024 09:00:04 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Will McVicker <willmcvicker@google.com>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v2 1/8] dt-bindings: phy: samsung,usb3-drd-phy: align to
 universal style
Message-ID: <20241204150004.GA217165-robh@kernel.org>
References: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
 <20241203-gs101-phy-lanes-orientation-phy-v2-1-40dcf1b7670d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241203-gs101-phy-lanes-orientation-phy-v2-1-40dcf1b7670d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_070007_432416_12110F6A 
X-CRM114-Status: UNSURE (   9.64  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Dec 03, 2024 at 12:13:49PM +0000, Andr=E9 Draszik wrote:
> In [1], Rob pointed out that we should really be separating properties
> with blank lines in between, which is universal style. Only where
> properties are booleans, empty lines are not required.

In the subject, just say 'add blank lines between DT properties'. =

'universal style' could be anything.

> =

> Do so.
> =

> Link: https://lore.kernel.org/all/20240711212359.GA3023490-robh@kernel.or=
g/ [1]
> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>
> =

> ---
> v2:
> * collect tags
> ---
>  .../devicetree/bindings/phy/samsung,usb3-drd-phy.yaml     | 15 +++++++++=
++++++
>  1 file changed, 15 insertions(+)

Acked-by: Rob Herring (Arm) <robh@kernel.org>

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
