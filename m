Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB32606A32C
	for <linux-phy@archiver.kernel.org>; Sun,  1 Nov 2026 10:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ULiabnXt;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=HWCVC/G7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rfIfyXow7B6f2f/4bRLZMJucEz3lJC8Ew/uFnJa/Fk0=; b=ULiabnXtdnO66Yg1FgEugQ7GX2
	JPnh8stdMEOi0FLkzD72TBEScmCqDU0kvqvPWQylvCafMkPJltjF7mntkL8mIlA3XESjN9AiUZA2z
	0MN0/47Wsg8YIdosFhs59Ev62iEcWn4IBsGSbZoBrUdWaAMwlgXOUvnWpb99idEIND/iKhBxYkOQj
	cPWqYxE5GEOhzsBU+Ien/2fGoa/GkVV28avSkiKyDr3YkvqLCD94KOB08L9C25Q7ncvOKh/JBBrq1
	ynFIeXmxAO6aQWZCYcp+6wmupevQwr958oVPlpKEfJdq6vbFk/QY5Gj4bAnv8VqDtYv7GjP++fW5U
	ZwlNAeEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNSxc-0000000E5k9-0Qh5;
	Sun, 01 Nov 2026 10:38:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNSxb-0000000E5k1-08RQ
	for linux-phy@lists.infradead.org;
	Sun, 01 Nov 2026 10:38:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A07E5406DD;
	Sun,  1 Nov 2026 10:38:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F01D11F000C1;
	Sun,  1 Nov 2026 10:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793529526;
	bh=dMH3qaerGlIxtPzzZ82iQ0WBAXiaZFLAGRlvE0Np840=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=HWCVC/G7GtetFHDeiU1jDOo26TG0/F1aeSQt9wTfOvw7Eh3K7pP6+9p9yM0niBgSY
	 dbRzkY05DpvQWBH4uOYm+spBX2dXAyoIo3ZlulZRNeeKLv4if6NS2834kMlDEymT5C
	 Fnp317ztJt91MUmj1vI3I8ufmTgl4SaN22yMLPgOf2WKvYGyLhBsUvo05SM0oxRQ8O
	 6+4YXiuGdqA3xBTO7+7DBzeEhyKNTNt3FtbUAGtAnJ0Cd3xMKiCWARjEO+wvmCFdmB
	 EcPGl7lm3KluGuTAmrXGEWgduRhBg4fpYRNNpF2a8EzvoPlj3gR6iv8p5ifIhfHIE3
	 j9ctBfKA0LefQ==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v9 5/6] phy: realtek: usb2: add support for RTL9607C
 USB2 PHY
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Stanley Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Zavertkin <misha.zavertkin@mail.ru>
In-Reply-To: <20261016180314.31760-6-adilov@disroot.org>
References: <20261016180314.31760-1-adilov@disroot.org>
 <20261016180314.31760-6-adilov@disroot.org>
Date: Sun, 01 Nov 2026 16:08:41 +0530
Message-Id: <179352952125.2955.2053892463815568166.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3121; i=mani@kernel.org;
 h=from:subject:message-id; bh=TLeKs/F24lWtBX55MW+qVfA0CV3sTaN9p59OeWSw/Fo=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5xaz08dE+wCEB6sULffEW0WG9vNM0hqYO4KCL
 7/uh4/Z8tuJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaucWswAKCRBVnxHm/pHO
 9XhfB/9ij3FA+ExdLLmzv9l52xkS3gSFdiiXUY35wOuRa6qfxNmrphNiNWwn3ZTS7iLsxCV50dN
 3abi7waZCvnPCQ+bDXuPpO5otwZgkvux6U5O7jk8WTGx9V29Bl+dEj2ObbWiLEQhaWKTz2qnk9x
 YOaHeb+RZqGebzj16QZHZypAGlOq5S7/JzcEjPkgZImxPoNDJX4mzrnvTcsuJyuC4uaj5IaMUw+
 LhkxuFt7xNEj23MV/mAVWn3wcqXQFvp91KFVbFFw8BD9CGAJw2n26KdAxgjmZeGJyhye8H0aTIE
 jbue5gWUfw25fSFLMD7NMmOjFaEkaahVp4dmc/lQIqjs8+iV
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-10-16 23:03 +0500, Rustam Adilov wrote:
> Add support for the usb2 phy of RTL9607C series based SoCs.
> Add the macros and phy config struct for rtl9607.
> 
> RTL9607C requires to clear a "force host disconnect" bit in the
> specific register (which is at an offset from reg_wrap_vstatus)
> before proceeding with phy parameter writes. Since it belongs into
> the vstatus register region, it requires the use of added read and
> write helper functions.
> 
> Add the bool variable to the driver data struct and hide this whole
> procedure under the if statement that checks this new variable.
> 
> Add the appropriate big endian read and write functions for rtl9607
> and assign them to its rtl9607_phy_reg_desc struct.
> 
> Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
> Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
> Signed-off-by: Rustam Adilov <adilov@disroot.org>
> ---
>  drivers/phy/realtek/phy-rtk-usb2.c | 66 ++++++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
> 
> diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
> index 2ddad7be7353..64076938c821 100644
> --- a/drivers/phy/realtek/phy-rtk-usb2.c
> +++ b/drivers/phy/realtek/phy-rtk-usb2.c
> @@ -26,6 +26,12 @@
>  #define PHY_VCTRL_SHIFT 8
>  #define PHY_REG_DATA_MASK 0xff
>  
> +#define PHY_9607_VSTS_BUSY BIT(17)
> +#define PHY_9607_NEW_REG_REQ BIT(13)
> +
> +#define PHY_9607_FORCE_DISCONNECT_REG 0x10
> +#define PHY_9607_FORCE_DISCONNECT_BIT BIT(5)
> +
>  #define GET_LOW_NIBBLE(addr) ((addr) & 0x0f)
>  #define GET_HIGH_NIBBLE(addr) (((addr) & 0xf0) >> 4)
>  
> @@ -107,6 +113,7 @@ struct phy_cfg {
>  	bool use_default_parameter;
>  	bool is_double_sensitivity_mode;
>  	const struct phy_reg_desc *reg_desc;
> +	bool force_host_disconnect;
>  };
>  
>  struct phy_parameter {
> @@ -144,6 +151,16 @@ static void rtk_usb2phy_write(u32 val, void __iomem *reg)
>  	writel(val, reg);
>  }
>  
> +static u32 rtk_usb2phy_read_be(void __iomem *reg)
> +{
> +	return ioread32be(reg);
> +}
> +
> +static void rtk_usb2phy_write_be(u32 val, void __iomem *reg)
> +{
> +	iowrite32be(val, reg);
> +}
> +
>  /* mapping 0xE0 to 0 ... 0xE7 to 7, 0xF0 to 8 ,,, 0xF7 to 15 */
>  static inline int page_addr_to_array_index(u8 addr)
>  {
> @@ -600,6 +617,23 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
>  		goto do_toggle;
>  	}
>  
> +	if (phy_cfg->force_host_disconnect) {
> +		const struct phy_reg_desc *reg_desc = phy_reg->desc;
> +		void __iomem *vstatus = phy_reg->reg_wrap_vstatus;
> +		u32 temp;
> +
> +		temp = reg_desc->read(vstatus + PHY_9607_FORCE_DISCONNECT_REG);
> +
> +		/* disable force-host-disconnect */
> +		temp &= ~PHY_9607_FORCE_DISCONNECT_BIT;
> +
> +		reg_desc->write(temp, vstatus + PHY_9607_FORCE_DISCONNECT_REG);
> +		temp = reg_desc->read(vstatus + PHY_9607_FORCE_DISCONNECT_REG);
> +
> +		/* allow IP to startup */
> +		usleep_range(10000, 11000);

Same comment as previous patch. Do you really need this range or just a fixed
sleep time.

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
