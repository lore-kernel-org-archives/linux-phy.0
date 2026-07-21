Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD572C44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 08:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Fr5p37N/wsJwsaKtA6t4Fv4lW3zCVdwWfyf0IAdibk=; b=2yMiJA8RztWVxo
	kmVt/eY0Su1I3etUvxM0mp3JKKosNJvPt1Jh1EbrHVuQicfRqP+LWiHkBEevJDqtfEd699WBqKKBD
	b31NwnzYdSuyZJG7DXxXlwE4An4Kny567ljH5B2nzA7oLhiRHtKUFipBPvHRZsvDgHuBMisSu48P/
	e8iYNQrkL6pcyTdwID+xs4b/jVl620fpu+Jbu2l3+KyqEI4uewQqaeeHrQtAuI8pTBjBKcsqTM+xG
	AQfO4qAkRI3tzqm8Eqpn4kxYX62IZG5Z5TJwBkRkRFoG80v4q45dM2FNE6ajO+OnOv8oi4ZiB9GWw
	AKa2S8OoRc/CShCF9Puw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm5jt-00000008o2u-1XKp;
	Tue, 21 Jul 2026 08:22:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm5js-00000008o2N-18as
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 08:22:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9D62C60A98;
	Tue, 21 Jul 2026 08:22:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86ED11F00A3A;
	Tue, 21 Jul 2026 08:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784622127;
	bh=0RHaEW0w/bs/hq1yndHK4/l1ePJNconwoidEFJXJN3E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oJpddCYq4AeC9n+mxP4PQSReyMhRNyiB9J3mvOKYtPMo6PVR/xFL1ExyRYz4q/8a1
	 asidlzMtsvM5Q+RgLWm3sqkSIsOvKVZQ0gWXL9xpHnIod2Mc99fJpYi6WlM34vx7Cy
	 /KKG50FqsLPffSLPSzkTLOb7huUW8eAwO31fzUJ6ES+Fb4/IPhmG5pLQV7dMJJeMRE
	 cCj+bKC9B1RIEjz/NdOTsxLqZftqldceOYwf18ga3sODSWmvQD30/YxzbugQarVsSW
	 5klWGmayf0TmLV/UWyb3G70FtNYzenFzeyNt1UdWO3MCMUQkPlOBQZyE/FAHPUSuVA
	 9EZ8aVtSQBcqg==
Date: Tue, 21 Jul 2026 10:22:03 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add SM8475 QMP PHY
Message-ID: <20260721-smoky-honorable-nightingale-8526e2@quoll>
References: <20260715-sm8475-bup-usbss-v2-0-2d8def39b190@proton.me>
 <20260715-sm8475-bup-usbss-v2-1-2d8def39b190@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260715-sm8475-bup-usbss-v2-1-2d8def39b190@proton.me>
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

On Wed, Jul 15, 2026 at 03:06:54AM -0400, Esteban Urrutia wrote:
> SM8450 init sequence for this PHY varies significantly and can't be used in
> SM8475.
> Add bindings for the PHY found in this SoC.
> 
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
