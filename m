Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294F9606A321
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2a0k5WjT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=purelymail.com header.i=@purelymail.com header.a=rsa-sha256 header.s=purelymail2 header.b=RN0C6Ro7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=shkXQmRjMijAXNw/4mOOhsxSGyJsdPHdq8iWYhwCu4M=; b=2a0k5WjToPkgxvJVzmWEED3mPB
	Sj7GuCp6YX3W7sWEbZvAeN3XBjHwFP10aLb5HD4lpxrG2EQnSinWSLZ/kWaVGSIviX7Ossg1Mp7fd
	pCui9kRf4HqqtR127WGtBi8liAcLEzw5s6nmQmk6SQCjJJ4/KkD+VmbY9xjygLSxUnZVwKABAFgfE
	eg5SOUjqeLlTeBVOE0m5glZwtwpiTgztOJSA6yWuxoADxM1uRSAthTqX8TB8WZbBO6XqOWq7DZKqa
	88nY13FiRsANeXEUzdN/kpf6XqchbI7Du63i6UJ3Or1Z+Ji5kSMFvQe/li3QlcBbGkLf+2pEo6CR0
	UNnD1qHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW0Z9-000000087rc-10qc;
	Wed, 25 Nov 2026 00:08:52 +0000
Received: from sendmail.purelymail.com ([34.202.193.197])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xW0Z6-000000087r2-2BOr
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 00:08:50 +0000
DKIM-Signature: a=rsa-sha256; b=RN0C6Ro7mR3xUBlTXWHMW8JzTNvfK1fed5xacdf71IeJEJwD3NWiUDgYMAhQp03XnNzPUO8oIKZAE3DwICH3FqBFfIMReUZPT/8RlV/qw8UBDW+4p/6iu/cxDyMK/21KDinJKBDaXxUEnuRXbL2GJ/+pJ62PvN5j3+1am3bJJpyWnOSe7UsfUlGuEErYZE1gI2GIWP/9J9+nuC4PrwKgGO1UU0Cdoy1TjbCN/13uMwHsNfTwoauw+t4u1EQoxgZMYdH4l0IdFQ2kc+C0dL3rGcb3EvvMUq6lyN7gIne+5lSu5TDMAK5EpABZ3GfHW3KOk41jJKMu9AKT/SIdxqu4Pw==; s=purelymail2; d=purelymail.com; v=1; bh=Z5AUULqU4STKqrKUgodGKeg+HOQYh1gNqO/mS1n3Tic=; h=Feedback-ID:Received:Message-ID:Date:Subject:To:From;
Feedback-ID: 68229:10037:null:purelymail
X-Pm-Original-To: linux-phy@lists.infradead.org
Authentication-Results: purelymail.com; auth=pass
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 1592599783;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Wed, 25 Nov 2026 00:06:31 +0000 (UTC)
Message-ID: <9bc95b2c-9b63-4b2a-b692-287e9cbe7d67@mentallysanemainliners.org>
Date: Wed, 25 Nov 2026 00:06:27 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] Add USB support to Exynos7885
To: David Virag <virag.david003@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Krzysztof Kozlowski
 <krzk@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <20261123092244.1792040-1-virag.david003@gmail.com>
Content-Language: en-US
From: Umer Uddin <umer.uddin@mentallysanemainliners.org>
In-Reply-To: <20261123092244.1792040-1-virag.david003@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_160848_627049_1D7A4F51 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On 23/11/2026 09:22, David Virag wrote:
> This set of patches adds support for USB on the Exynos7885 SoC.
>   
> The Exynos7885 has a DWC3 compatible USB controller and an Exynos USB
> PHY that theoretically supports USB3 SuperSpeed, but is not implemented
> in any known device. The vendor kernel also stubs out USB3 functions, so
> we do not support it.
>
> This is a v2 of a previous set [1], which was split into a clk patchset
> I did submit back in 2024 and eventually it got applied, and this set,
> which I never ended up submitting until now.
>
> This version fixes some things noted by Krzysztof Kozlowski, and also
> contains a change made by Umer Uddin, as he recently tried to resubmit
> my old patches from github [2], fixing some things up, but missing the
> previous remarks.
>
> [1] https://lore.kernel.org/linux-samsung-soc/20240804215458.404085-1-virag.david003@gmail.com/
> [2] https://lore.kernel.org/linux-samsung-soc/20261119-gta3xllte-usb-battery-v1-0-0cf5f763522e@mentallysanemainliners.org/
>
> Changes in v2:
> - Clk changes not included as they are already applied
> - Add Reviewed-by: tags where appropriate
> - Use samsung,exynos850-dwusb3 fallback compatible for dwusb3
> - Use unsigned long for set_ref_clk_rate
> - (from Umer Uddin:) Error-check clk_set_rate, and fail if returns an
>    error.
> - Keep dt nodes ordered by unit address.
>
> David Virag (5):
>    dt-bindings: phy: samsung,usb3-drd-phy: Add Exynos7885 support
>    dt-bindings: usb: samsung,exynos-dwc3: Add Exynos7885 support
>    phy: exynos5-usbdrd: support Exynos7885 USB PHY
>    arm64: dts: exynos: Enable USB in Exynos7885
>    arm64: dts: exynos: exynos7885-jackpotlte: Enable USB support
>
>   .../bindings/phy/samsung,usb3-drd-phy.yaml    |  2 ++
>   .../bindings/usb/samsung,exynos-dwc3.yaml     |  3 ++
>   .../boot/dts/exynos/exynos7885-jackpotlte.dts | 20 +++++++++++
>   arch/arm64/boot/dts/exynos/exynos7885.dtsi    | 36 +++++++++++++++++++
>   drivers/phy/samsung/phy-exynos5-usbdrd.c      | 26 ++++++++++++++
>   include/linux/soc/samsung/exynos-regs-pmu.h   |  3 ++
>   6 files changed, 90 insertions(+)
>
>
> base-commit: 5d7b9f865597a74b323d512619c42f3e07ae043a

Thank you for submitting the fixed work. All works on gta3xllte.


Tested-by: Umer Uddin <umer.uddin@mentallysanemainliners.org>


Best regards,

Umer


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
