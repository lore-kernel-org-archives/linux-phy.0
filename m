Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0017DC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 07:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsOpgoh8wo++auAWHEzNdW+epoNjAPLdnHG8lFcdhrI=; b=uf2zH2i93JkxFn
	B0YfJUTGmejZZI750s+epPYpl+/jqghewdWlGaV7/AB3EpCHMb+rbz/8MSZ98Px/UawkaTwgCBywG
	nec6kOJC22BzqT1NYmrn/Is2kG9eN9tBxoNNn0mXMlji4wgLZ6e+AKM2fHVt0Q2Tq8TUH9upfeSgE
	cGImdmwlWNWG0lJMb2u5KuTwndwa1qtWCUjmzvbhVUvSPVqjGTrqz3IHHhwPTHHY7rDvqF76R+ZEh
	q7GcYeWFoFfcNMudEDfTwLRRkmLRt6evfyudf3ACRAv2aUVKwcf1gAulOu7uSj90R0xHjnL24KY2Q
	48LX+IXIR/c+OEM7BG9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpQCI-0013YJ-Al; Tue, 23 Nov 2021 07:26:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpQCD-0013XA-8R
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 07:26:33 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9D5DE60F5B;
 Tue, 23 Nov 2021 07:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637652388;
 bh=q20MCcmQauQDvFe5hX8gTDFQH1V3j8EFU0mK3dt2LRY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CuLMQKiC3OPaFor3Iq5Z+Qc8JZI3iVq1ti5IEKJF3Zs9QBxAz3ta9p5SR25RAIgiJ
 9cwv6go+lIpZ+sWBcKHnm51iPgkpG9UNsC3oyfSKK359EyRmC3RQnzURr/jl4AguDf
 Z7GBeTAGfqZRK+LXjMcCjEsyxrhMowitQ5yg6KM10i0NQFzHdvFzuXX5G6m7XmwaDg
 tyF/bKLFm7FUCKA7E51s0Joh0ClszaUjcFWc4dCoAjJ4XhGj9dtxW9vS9eKLT5F2OJ
 UKQRc7j5vffX1iZSZnzNtT/Rla7w462nFMuKnpaEgfyHzDFykI5Ndxnz5LDXm7ipfk
 uJSG42Q1KI8aw==
Date: Tue, 23 Nov 2021 12:56:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>, pali@kernel.org
Subject: Re: [PATCH phy 2/6] phy: marvell: phy-mvebu-a3700-comphy: Add native
 kernel implementation
Message-ID: <YZyXoAofmLeqzNBh@matsya>
References: <20211028184242.22105-1-kabel@kernel.org>
 <20211028184242.22105-3-kabel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211028184242.22105-3-kabel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_232629_417868_D3F138A5 
X-CRM114-Status: GOOD (  26.89  )
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

On 28-10-21, 20:42, Marek Beh=FAn wrote:
> From: Pali Roh=E1r <pali@kernel.org>
> =

> Remove old RPC implementation and add a new native kernel implementation.
> =

> The old implementation uses ARM SMC API to issue RPC calls to ARM Trusted
> Firmware which provides real implementation of PHY configuration.
> =

> But older versions of ARM Trusted Firmware do not provide this PY
> configuration functionality, simply returning: operation not supported; or
> worse, some versions provide the configuration functionality incorrectly.
> =

> For example the firmware shipped in ESPRESSObin board has this older
> version of ARM Trusted Firmware and therefore SATA, USB 3.0 and PCIe
> functionality do not work with newer versions of Linux kernel.
> =

> Due to the above reasons, the following commits were introduced into Linu=
x,
> to workaround these issues by ignoring -EOPNOTSUPP error code from
> phy-mvebu-a3700-comphy driver function phy_power_on():
> =

> commit 45aefe3d2251 ("ata: ahci: mvebu: Make SATA PHY optional for Armada
> 3720")
> commit 3241929b67d2 ("usb: host: xhci: mvebu: make USB 3.0 PHY optional f=
or
> Armada 3720")
> commit b0c6ae0f8948 ("PCI: aardvark: Fix initialization with old Marvell's
> Arm Trusted Firmware")
> =

> Replace this RPC implementation with proper native kernel implementation,
> which is independent on the firmware. Never return -EOPNOTSUPP for proper
> arguments.
> =

> This should solve multiple issues with real-world boards, where it is not
> possible or really inconvenient to change the firmware. Let's eliminate
> these issues.
> =

> This implementation is ported directly from Armada 3720 comphy driver fou=
nd
> in newest version of ARM Trusted Firmware source code.
> =

> Signed-off-by: Pali Roh=E1r <pali@kernel.org>
> Signed-off-by: Marek Beh=FAn <kabel@kernel.org>
> ---
>  drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 1296 ++++++++++++++++--
>  1 file changed, 1179 insertions(+), 117 deletions(-)
> =

> diff --git a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c b/drivers/phy/m=
arvell/phy-mvebu-a3700-comphy.c
> index dbb2d4308851..3fc01d8fbea9 100644
> --- a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
> +++ b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
> @@ -5,12 +5,14 @@
>   * Authors:
>   *   Evan Wang <xswang@marvell.com>
>   *   Miqu=E8l Raynal <miquel.raynal@bootlin.com>
> + *   Pali Roh=E1r <pali@kernel.org>
>   *
>   * Structure inspired from phy-mvebu-cp110-comphy.c written by Antoine T=
enart.
>   * SMC call initial support done by Grzegorz Jaszczyk.
> + * Comphy code from ARM Trusted Firmware ported by Pali Roh=E1r <pali@ke=
rnel.org>.
>   */
>  =

> -#include <linux/arm-smccc.h>
> +#include <linux/clk.h>
>  #include <linux/io.h>
>  #include <linux/iopoll.h>
>  #include <linux/mfd/syscon.h>
> @@ -19,102 +21,1122 @@
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  =

> -#define MVEBU_A3700_COMPHY_LANES		3
> -
> -/* COMPHY Fast SMC function identifiers */
> -#define COMPHY_SIP_POWER_ON			0x82000001
> -#define COMPHY_SIP_POWER_OFF			0x82000002
> -#define COMPHY_SIP_PLL_LOCK			0x82000003
> -
> -#define COMPHY_FW_MODE_SATA			0x1
> -#define COMPHY_FW_MODE_SGMII			0x2
> -#define COMPHY_FW_MODE_2500BASEX		0x3
> -#define COMPHY_FW_MODE_USB3H			0x4
> -#define COMPHY_FW_MODE_USB3D			0x5
> -#define COMPHY_FW_MODE_PCIE			0x6
> -#define COMPHY_FW_MODE_USB3			0xa
> -
> -#define COMPHY_FW_SPEED_1_25G			0 /* SGMII 1G */
> -#define COMPHY_FW_SPEED_2_5G			1
> -#define COMPHY_FW_SPEED_3_125G			2 /* 2500BASE-X */
> -#define COMPHY_FW_SPEED_5G			3
> -#define COMPHY_FW_SPEED_MAX			0x3F
> -
> -#define COMPHY_FW_MODE(mode)			((mode) << 12)
> -#define COMPHY_FW_NET(mode, idx, speed)		(COMPHY_FW_MODE(mode) | \
> -						 ((idx) << 8) |	\
> -						 ((speed) << 2))
> -#define COMPHY_FW_PCIE(mode, speed, width)	(COMPHY_FW_NET(mode, 0, speed=
) | \
> -						 ((width) << 18))
> +#define PLL_SET_DELAY_US			600
> +#define COMPHY_PLL_SLEEP			1000
> +#define COMPHY_PLL_TIMEOUT			150000
> +
> +#define COMPHY_SELECTOR_PHY_REG			0xFC
> +/* bit0: 0: Lane0 is GBE0; 1: Lane1 is PCIE */
> +#define COMPHY_SELECTOR_PCIE_GBE0_SEL_BIT	BIT(0)
> +/* bit4: 0: Lane1 is GBE1; 1: Lane1 is USB3 */
> +#define COMPHY_SELECTOR_USB3_GBE1_SEL_BIT	BIT(4)
> +/* bit8: 0: Lane1 is USB, Lane2 is SATA; 1: Lane2 is USB3 */
> +#define COMPHY_SELECTOR_USB3_PHY_SEL_BIT	BIT(8)
> +
> +/* SATA PHY register offset */
> +#define SATAPHY_LANE2_REG_BASE_OFFSET		0x200
> +
> +/* USB3 PHY offset compared to SATA PHY */
> +#define USB3PHY_LANE2_REG_BASE_OFFSET		0x200
> +
> +/* Comphy lane2 indirect access register offset */
> +#define COMPHY_LANE2_INDIR_ADDR_OFFSET		0x0
> +#define COMPHY_LANE2_INDIR_DATA_OFFSET		0x4
> +
> +/* PHY shift to get related register address */
> +enum {
> +	PCIE =3D 1,
> +	USB3,
> +};
> +
> +#define PCIEPHY_SHFT			2
> +#define USB3PHY_SHFT			2
> +#define PHY_SHFT(unit)			((unit =3D=3D PCIE) ? PCIEPHY_SHFT : USB3PHY_SH=
FT)
> +
> +/* PHY register */
> +#define COMPHY_POWER_PLL_CTRL		0x01
> +#define PWR_PLL_CTRL_ADDR(unit)		(COMPHY_POWER_PLL_CTRL * PHY_SHFT(unit))
> +#define PU_IVREF_BIT			BIT(15)
> +#define PU_PLL_BIT			BIT(14)
> +#define PU_RX_BIT			BIT(13)
> +#define PU_TX_BIT			BIT(12)
> +#define PU_TX_INTP_BIT			BIT(11)
> +#define PU_DFE_BIT			BIT(10)
> +#define RESET_DTL_RX_BIT		BIT(9)
> +#define PLL_LOCK_BIT			BIT(8)
> +#define REF_FREF_SEL_OFFSET		0
> +#define REF_FREF_SEL_MASK		(0x1F << REF_FREF_SEL_OFFSET)
> +#define REF_CLOCK_SPEED_25M		(0x1 << REF_FREF_SEL_OFFSET)
> +#define REF_CLOCK_SPEED_30M		(0x2 << REF_FREF_SEL_OFFSET)
> +#define PCIE_REF_CLOCK_SPEED_25M	REF_CLOCK_SPEED_30M
> +#define USB3_REF_CLOCK_SPEED_25M	REF_CLOCK_SPEED_30M
> +#define REF_CLOCK_SPEED_40M		(0x3 << REF_FREF_SEL_OFFSET)
> +#define REF_CLOCK_SPEED_50M		(0x4 << REF_FREF_SEL_OFFSET)
> +#define COMPHY_MODE_OFFSET		5
> +#define COMPHY_MODE_MASK		(7 << COMPHY_MODE_OFFSET)
> +#define COMPHY_MODE_SATA		(0x0 << COMPHY_MODE_OFFSET)
> +#define COMPHY_MODE_PCIE		(0x3 << COMPHY_MODE_OFFSET)
> +#define COMPHY_MODE_SERDES		(0x4 << COMPHY_MODE_OFFSET)
> +#define COMPHY_MODE_USB3		(0x5 << COMPHY_MODE_OFFSET)
> +
> +#define COMPHY_KVCO_CAL_CTRL		0x02
> +#define KVCO_CAL_CTRL_ADDR(unit)	(COMPHY_KVCO_CAL_CTRL * PHY_SHFT(unit))
> +#define USE_MAX_PLL_RATE_BIT		BIT(12)
> +#define SPEED_PLL_OFFSET		2
> +#define SPEED_PLL_MASK			(0x3F << SPEED_PLL_OFFSET)
> +#define SPEED_PLL_VALUE_16		(0x10 << SPEED_PLL_OFFSET)
> +
> +#define COMPHY_RESERVED_REG		0x0E
> +#define PHYCTRL_FRM_PIN_BIT		BIT(13)
> +
> +#define COMPHY_LOOPBACK_REG0		0x23
> +#define DIG_LB_EN_ADDR(unit)		(COMPHY_LOOPBACK_REG0 * PHY_SHFT(unit))
> +#define SEL_DATA_WIDTH_OFFSET		10
> +#define SEL_DATA_WIDTH_MASK		(0x3 << SEL_DATA_WIDTH_OFFSET)
> +#define DATA_WIDTH_10BIT		(0x0 << SEL_DATA_WIDTH_OFFSET)
> +#define DATA_WIDTH_20BIT		(0x1 << SEL_DATA_WIDTH_OFFSET)
> +#define DATA_WIDTH_40BIT		(0x2 << SEL_DATA_WIDTH_OFFSET)
> +#define PLL_READY_TX_BIT		BIT(4)
> +
> +#define COMPHY_SYNC_PATTERN_REG		0x24
> +#define SYNC_PATTERN_REG_ADDR(unit)	(COMPHY_SYNC_PATTERN_REG * PHY_SHFT(=
unit))
> +#define TXD_INVERT_BIT			BIT(10)
> +#define RXD_INVERT_BIT			BIT(11)
> +
> +#define COMPHY_SYNC_MASK_GEN_REG	0x25
> +#define PHY_GEN_MAX_OFFSET		10
> +#define PHY_GEN_MAX_MASK		(3 << PHY_GEN_MAX_OFFSET)

Pls use GENMASK()

> +#define PHY_GEN_USB3_5G			(1 << PHY_GEN_MAX_OFFSET)

this should be BIT(10)

> +
> +#define COMPHY_ISOLATION_CTRL_REG	0x26
> +#define ISOLATION_CTRL_REG_ADDR(unit)	(COMPHY_ISOLATION_CTRL_REG * PHY_S=
HFT(unit))
> +#define PHY_ISOLATE_MODE		BIT(15)
> +
> +#define COMPHY_MISC_REG0_ADDR		0x4F
> +#define MISC_REG0_ADDR(unit)		(COMPHY_MISC_REG0_ADDR * PHY_SHFT(unit))
> +#define CLK100M_125M_EN			BIT(4)
> +#define TXDCLK_2X_SEL			BIT(6)
> +#define CLK500M_EN			BIT(7)
> +#define PHY_REF_CLK_SEL			BIT(10)
> +#define MISC_REG0_DEFAULT_VALUE		0xA00D
> +
> +#define COMPHY_REG_GEN2_SET_2		0x3e
> +#define GEN2_SETTING_2_ADDR(unit)	(COMPHY_REG_GEN2_SET_2 * PHY_SHFT(unit=
))
> +#define G2_TX_SSC_AMP_VALUE_20		BIT(14)
> +#define G2_TX_SSC_AMP_OFF		9
> +#define G2_TX_SSC_AMP_LEN		7
> +#define G2_TX_SSC_AMP_MASK		(((1 << G2_TX_SSC_AMP_LEN) - 1) << G2_TX_SSC=
_AMP_OFF)
> +
> +#define COMPHY_REG_GEN2_SET_3		0x3f
> +#define GEN2_SETTING_3_ADDR(unit)	(COMPHY_REG_GEN2_SET_3 * PHY_SHFT(unit=
))
> +#define G3_TX_SSC_AMP_OFF		9
> +#define G3_TX_SSC_AMP_LEN		7
> +#define G3_TX_SSC_AMP_MASK		(((1 << G2_TX_SSC_AMP_LEN) - 1) << G2_TX_SSC=
_AMP_OFF)
> +#define G3_VREG_RXTX_MAS_ISET_OFF	7
> +#define G3_VREG_RXTX_MAS_ISET_60U	(0 << G3_VREG_RXTX_MAS_ISET_OFF)
> +#define G3_VREG_RXTX_MAS_ISET_80U	(1 << G3_VREG_RXTX_MAS_ISET_OFF)
> +#define G3_VREG_RXTX_MAS_ISET_100U	(2 << G3_VREG_RXTX_MAS_ISET_OFF)
> +#define G3_VREG_RXTX_MAS_ISET_120U	(3 << G3_VREG_RXTX_MAS_ISET_OFF)
> +#define G3_VREG_RXTX_MAS_ISET_MASK	(BIT(7) | BIT(8))
> +#define RSVD_PH03FH_6_0_OFF		0
> +#define RSVD_PH03FH_6_0_LEN		7
> +#define RSVD_PH03FH_6_0_MASK		(((1 << RSVD_PH03FH_6_0_LEN) - 1) << RSVD_=
PH03FH_6_0_OFF)
> +
> +#define COMPHY_REG_UNIT_CTRL_ADDR	0x48
> +#define UNIT_CTRL_ADDR(unit)		(COMPHY_REG_UNIT_CTRL_ADDR * PHY_SHFT(unit=
))
> +#define IDLE_SYNC_EN			BIT(12)
> +#define UNIT_CTRL_DEFAULT_VALUE		0x60
> +
> +#define COMPHY_MISC_REG1_ADDR		0x73
> +#define MISC_REG1_ADDR(unit)		(COMPHY_MISC_REG1_ADDR * PHY_SHFT(unit))
> +#define SEL_BITS_PCIE_FORCE		BIT(15)
> +
> +#define COMPHY_REG_GEN3_SETTINGS_3	0x112
> +#define COMPHY_GEN_FFE_CAP_SEL_MASK	0xF
> +#define COMPHY_GEN_FFE_CAP_SEL_VALUE	0xF
> +
> +#define COMPHY_REG_LANE_CFG0_ADDR	0x180
> +#define LANE_CFG0_ADDR(unit)		(COMPHY_REG_LANE_CFG0_ADDR * PHY_SHFT(unit=
))
> +#define PRD_TXDEEMPH0_MASK		BIT(0)
> +#define PRD_TXMARGIN_MASK		(BIT(1) | BIT(2) | BIT(3))
> +#define PRD_TXSWING_MASK		BIT(4)
> +#define CFG_TX_ALIGN_POS_MASK		(BIT(5) | BIT(6) | BIT(7) | BIT(8))
> +
> +#define COMPHY_REG_LANE_CFG1_ADDR	0x181
> +#define LANE_CFG1_ADDR(unit)		(COMPHY_REG_LANE_CFG1_ADDR * PHY_SHFT(unit=
))
> +#define PRD_TXDEEMPH1_MASK		BIT(15)
> +#define USE_MAX_PLL_RATE_EN		BIT(9)
> +#define TX_DET_RX_MODE			BIT(6)
> +#define GEN2_TX_DATA_DLY_MASK		(BIT(3) | BIT(4))
> +#define GEN2_TX_DATA_DLY_DEFT		(2 << 3)
> +#define TX_ELEC_IDLE_MODE_EN		BIT(0)
> +
> +#define COMPHY_REG_LANE_STATUS1_ADDR	0x183
> +#define LANE_STATUS1_ADDR(unit)		(COMPHY_REG_LANE_STATUS1_ADDR * PHY_SHF=
T(unit))
> +#define TXDCLK_PCLK_EN			BIT(0)
> +
> +#define COMPHY_REG_LANE_CFG4_ADDR	0x188
> +#define LANE_CFG4_ADDR(unit)		(COMPHY_REG_LANE_CFG4_ADDR * PHY_SHFT(unit=
))
> +#define SPREAD_SPECTRUM_CLK_EN		BIT(7)
> +
> +#define COMPHY_REG_GLOB_PHY_CTRL0_ADDR	0x1C1
> +#define GLOB_PHY_CTRL0_ADDR(unit)	(COMPHY_REG_GLOB_PHY_CTRL0_ADDR * PHY_=
SHFT(unit))
> +#define SOFT_RESET			BIT(0)
> +#define MODE_REFDIV			0x30
> +#define MODE_CORE_CLK_FREQ_SEL		BIT(9)
> +#define MODE_PIPE_WIDTH_32		BIT(3)
> +#define MODE_REFDIV_OFFSET		4
> +#define MODE_REFDIV_LEN			2
> +#define MODE_REFDIV_MASK		(0x3 << MODE_REFDIV_OFFSET)
> +#define MODE_REFDIV_BY_4		(0x2 << MODE_REFDIV_OFFSET)
> +
> +#define COMPHY_REG_TEST_MODE_CTRL_ADDR	0x1C2
> +#define TEST_MODE_CTRL_ADDR(unit)	(COMPHY_REG_TEST_MODE_CTRL_ADDR * PHY_=
SHFT(unit))
> +#define MODE_MARGIN_OVERRIDE		BIT(2)
> +
> +#define COMPHY_REG_GLOB_CLK_SRC_LO_ADDR	0x1C3
> +#define GLOB_CLK_SRC_LO_ADDR(unit)	(COMPHY_REG_GLOB_CLK_SRC_LO_ADDR * PH=
Y_SHFT(unit))
> +#define MODE_CLK_SRC			BIT(0)
> +#define BUNDLE_PERIOD_SEL		BIT(1)
> +#define BUNDLE_PERIOD_SCALE		(BIT(2) | BIT(3))
> +#define BUNDLE_SAMPLE_CTRL		BIT(4)
> +#define PLL_READY_DLY			(BIT(5) | BIT(6) | BIT(7))
> +#define CFG_SEL_20B			BIT(15)
> +
> +#define COMPHY_REG_PWR_MGM_TIM1_ADDR	0x1D0
> +#define PWR_MGM_TIM1_ADDR(unit)		(COMPHY_REG_PWR_MGM_TIM1_ADDR * PHY_SHF=
T(unit))
> +#define CFG_PM_OSCCLK_WAIT_OFF		12
> +#define CFG_PM_OSCCLK_WAIT_LEN		4
> +#define CFG_PM_OSCCLK_WAIT_MASK		(((1 << CFG_PM_OSCCLK_WAIT_LEN) - 1) <<=
 \
> +					 CFG_PM_OSCCLK_WAIT_OFF)
> +#define CFG_PM_RXDEN_WAIT_OFF		8
> +#define CFG_PM_RXDEN_WAIT_LEN		4
> +#define CFG_PM_RXDEN_WAIT_MASK		(((1 << CFG_PM_RXDEN_WAIT_LEN) - 1) << \
> +					 CFG_PM_RXDEN_WAIT_OFF)
> +#define CFG_PM_RXDEN_WAIT_1_UNIT	(1 << CFG_PM_RXDEN_WAIT_OFF)
> +#define CFG_PM_RXDLOZ_WAIT_OFF		0
> +#define CFG_PM_RXDLOZ_WAIT_LEN		8
> +#define CFG_PM_RXDLOZ_WAIT_MASK		(((1 << CFG_PM_RXDLOZ_WAIT_LEN) - 1) <<=
 \
> +					 CFG_PM_RXDLOZ_WAIT_OFF)
> +#define CFG_PM_RXDLOZ_WAIT_7_UNIT	(7 << CFG_PM_RXDLOZ_WAIT_OFF)
> +#define CFG_PM_RXDLOZ_WAIT_12_UNIT	(0xC << CFG_PM_RXDLOZ_WAIT_OFF)
> +
> +/* SERDES */
> +#define COMPHY_PHY_CFG1_OFFSET(lane)	((1 - (lane)) * 0x28)
> +#define PIN_PU_IVEREF_BIT		BIT(1)
> +#define PIN_RESET_CORE_BIT		BIT(11)
> +#define PIN_RESET_COMPHY_BIT		BIT(12)
> +#define PIN_PU_PLL_BIT			BIT(16)
> +#define PIN_PU_RX_BIT			BIT(17)
> +#define PIN_PU_TX_BIT			BIT(18)
> +#define PIN_TX_IDLE_BIT			BIT(19)
> +#define GEN_RX_SEL_OFFSET		22
> +#define GEN_RX_SEL_MASK			(0xF << GEN_RX_SEL_OFFSET)
> +#define GEN_TX_SEL_OFFSET		26
> +#define GEN_TX_SEL_MASK			(0xF << GEN_TX_SEL_OFFSET)
> +#define PHY_RX_INIT_BIT			BIT(30)
> +#define SERDES_SPEED_1_25_G		0x6
> +#define SERDES_SPEED_2_5_G		0x8
> +
> +/* COMPHY status reg:
> + * lane0: PCIe/GbE0 PHY Status 1
> + * lane1: USB3/GbE1 PHY Status 1
> + */
> +#define COMPHY_PHY_STATUS_OFFSET(lane)	(0x18 + (1 - (lane)) * 0x28)
> +#define PHY_RX_INIT_DONE_BIT		BIT(0)
> +#define PHY_PLL_READY_RX_BIT		BIT(2)
> +#define PHY_PLL_READY_TX_BIT		BIT(3)
> +
> +#define GBE_PHY_ADDR(base, off)		((base) + (((off) & 0x00007FF) * 2))
>  =

>  struct mvebu_a3700_comphy_conf {
>  	unsigned int lane;
>  	enum phy_mode mode;
>  	int submode;
> -	u32 fw_mode;
>  };
>  =

> -#define MVEBU_A3700_COMPHY_CONF(_lane, _mode, _smode, _fw)		\
> +#define MVEBU_A3700_COMPHY_CONF(_lane, _mode, _smode)			\
>  	{								\
>  		.lane =3D _lane,						\
>  		.mode =3D _mode,						\
>  		.submode =3D _smode,					\
> -		.fw_mode =3D _fw,						\
>  	}
>  =

> -#define MVEBU_A3700_COMPHY_CONF_GEN(_lane, _mode, _fw) \
> -	MVEBU_A3700_COMPHY_CONF(_lane, _mode, PHY_INTERFACE_MODE_NA, _fw)
> +#define MVEBU_A3700_COMPHY_CONF_GEN(_lane, _mode) \
> +	MVEBU_A3700_COMPHY_CONF(_lane, _mode, PHY_INTERFACE_MODE_NA)
>  =

> -#define MVEBU_A3700_COMPHY_CONF_ETH(_lane, _smode, _fw) \
> -	MVEBU_A3700_COMPHY_CONF(_lane, PHY_MODE_ETHERNET, _smode, _fw)
> +#define MVEBU_A3700_COMPHY_CONF_ETH(_lane, _smode) \
> +	MVEBU_A3700_COMPHY_CONF(_lane, PHY_MODE_ETHERNET, _smode)
>  =

>  static const struct mvebu_a3700_comphy_conf mvebu_a3700_comphy_modes[] =
=3D {
>  	/* lane 0 */
> -	MVEBU_A3700_COMPHY_CONF_GEN(0, PHY_MODE_USB_HOST_SS,
> -				    COMPHY_FW_MODE_USB3H),
> -	MVEBU_A3700_COMPHY_CONF_ETH(0, PHY_INTERFACE_MODE_SGMII,
> -				    COMPHY_FW_MODE_SGMII),
> -	MVEBU_A3700_COMPHY_CONF_ETH(0, PHY_INTERFACE_MODE_2500BASEX,
> -				    COMPHY_FW_MODE_2500BASEX),
> +	MVEBU_A3700_COMPHY_CONF_GEN(0, PHY_MODE_USB_HOST_SS),
> +	MVEBU_A3700_COMPHY_CONF_ETH(0, PHY_INTERFACE_MODE_SGMII),
> +	MVEBU_A3700_COMPHY_CONF_ETH(0, PHY_INTERFACE_MODE_1000BASEX),
> +	MVEBU_A3700_COMPHY_CONF_ETH(0, PHY_INTERFACE_MODE_2500BASEX),
>  	/* lane 1 */
> -	MVEBU_A3700_COMPHY_CONF_GEN(1, PHY_MODE_PCIE, COMPHY_FW_MODE_PCIE),
> -	MVEBU_A3700_COMPHY_CONF_ETH(1, PHY_INTERFACE_MODE_SGMII,
> -				    COMPHY_FW_MODE_SGMII),
> -	MVEBU_A3700_COMPHY_CONF_ETH(1, PHY_INTERFACE_MODE_2500BASEX,
> -				    COMPHY_FW_MODE_2500BASEX),
> +	MVEBU_A3700_COMPHY_CONF_GEN(1, PHY_MODE_PCIE),
> +	MVEBU_A3700_COMPHY_CONF_ETH(1, PHY_INTERFACE_MODE_SGMII),
> +	MVEBU_A3700_COMPHY_CONF_ETH(1, PHY_INTERFACE_MODE_1000BASEX),
> +	MVEBU_A3700_COMPHY_CONF_ETH(1, PHY_INTERFACE_MODE_2500BASEX),
>  	/* lane 2 */
> -	MVEBU_A3700_COMPHY_CONF_GEN(2, PHY_MODE_SATA, COMPHY_FW_MODE_SATA),
> -	MVEBU_A3700_COMPHY_CONF_GEN(2, PHY_MODE_USB_HOST_SS,
> -				    COMPHY_FW_MODE_USB3H),
> +	MVEBU_A3700_COMPHY_CONF_GEN(2, PHY_MODE_SATA),
> +	MVEBU_A3700_COMPHY_CONF_GEN(2, PHY_MODE_USB_HOST_SS),
> +};
> +
> +struct mvebu_a3700_comphy_priv {
> +	void __iomem *comphy_regs;
> +	void __iomem *pcie_gbe0_phy_regs;
> +	void __iomem *usb3_gbe1_phy_regs;
> +	void __iomem *sata_usb3_phy_regs;
> +	bool xtal_is_40m;
>  };
>  =

>  struct mvebu_a3700_comphy_lane {
> +	struct mvebu_a3700_comphy_priv *priv;
>  	struct device *dev;
>  	unsigned int id;
>  	enum phy_mode mode;
>  	int submode;
> +	bool invert_tx;
> +	bool invert_rx;
> +};
> +
> +struct gbe_phy_init_data_fix {
> +	u16 addr;
> +	u16 value;
> +};
> +
> +/* Changes to 40M1G25 mode data required for running 40M3G125 init mode =
*/
> +static struct gbe_phy_init_data_fix gbe_phy_init_fix[] =3D {
> +	{0x005, 0x07CC}, {0x015, 0x0000}, {0x01B, 0x0000}, {0x01D, 0x0000},
> +	{0x01E, 0x0000}, {0x01F, 0x0000}, {0x020, 0x0000}, {0x021, 0x0030},
> +	{0x026, 0x0888}, {0x04D, 0x0152}, {0x04F, 0xA020}, {0x050, 0x07CC},
> +	{0x053, 0xE9CA}, {0x055, 0xBD97}, {0x071, 0x3015}, {0x076, 0x03AA},
> +	{0x07C, 0x0FDF}, {0x0C2, 0x3030}, {0x0C3, 0x8000}, {0x0E2, 0x5550},
> +	{0x0E3, 0x12A4}, {0x0E4, 0x7D00}, {0x0E6, 0x0C83}, {0x101, 0xFCC0},
> +	{0x104, 0x0C10}
> +};
> +
> +/* 40M1G25 mode init data */
> +static u16 gbe_phy_init[512] =3D {
> +	/* 0       1       2       3       4       5       6       7 */
> +	/*-----------------------------------------------------------*/
> +	/* 8       9       A       B       C       D       E       F */
> +	0x3110, 0xFD83, 0x6430, 0x412F, 0x82C0, 0x06FA, 0x4500, 0x6D26,	/* 00 */
> +	0xAFC0, 0x8000, 0xC000, 0x0000, 0x2000, 0x49CC, 0x0BC9, 0x2A52,	/* 08 */
> +	0x0BD2, 0x0CDE, 0x13D2, 0x0CE8, 0x1149, 0x10E0, 0x0000, 0x0000,	/* 10 */
> +	0x0000, 0x0000, 0x0000, 0x0001, 0x0000, 0x4134, 0x0D2D, 0xFFFF,	/* 18 */
> +	0xFFE0, 0x4030, 0x1016, 0x0030, 0x0000, 0x0800, 0x0866, 0x0000,	/* 20 */
> +	0x0000, 0x0000, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF,	/* 28 */
> +	0xFFFF, 0xFFFF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/* 30 */
> +	0x0000, 0x0000, 0x000F, 0x6A62, 0x1988, 0x3100, 0x3100, 0x3100,	/* 38 */
> +	0x3100, 0xA708, 0x2430, 0x0830, 0x1030, 0x4610, 0xFF00, 0xFF00,	/* 40 */
> +	0x0060, 0x1000, 0x0400, 0x0040, 0x00F0, 0x0155, 0x1100, 0xA02A,	/* 48 */
> +	0x06FA, 0x0080, 0xB008, 0xE3ED, 0x5002, 0xB592, 0x7A80, 0x0001,	/* 50 */
> +	0x020A, 0x8820, 0x6014, 0x8054, 0xACAA, 0xFC88, 0x2A02, 0x45CF,	/* 58 */
> +	0x000F, 0x1817, 0x2860, 0x064F, 0x0000, 0x0204, 0x1800, 0x6000,	/* 60 */
> +	0x810F, 0x4F23, 0x4000, 0x4498, 0x0850, 0x0000, 0x000E, 0x1002,	/* 68 */
> +	0x9D3A, 0x3009, 0xD066, 0x0491, 0x0001, 0x6AB0, 0x0399, 0x3780,	/* 70 */
> +	0x0040, 0x5AC0, 0x4A80, 0x0000, 0x01DF, 0x0000, 0x0007, 0x0000,	/* 78 */
> +	0x2D54, 0x00A1, 0x4000, 0x0100, 0xA20A, 0x0000, 0x0000, 0x0000,	/* 80 */
> +	0x0000, 0x0000, 0x0000, 0x7400, 0x0E81, 0x1000, 0x1242, 0x0210,	/* 88 */
> +	0x80DF, 0x0F1F, 0x2F3F, 0x4F5F, 0x6F7F, 0x0F1F, 0x2F3F, 0x4F5F,	/* 90 */
> +	0x6F7F, 0x4BAD, 0x0000, 0x0000, 0x0800, 0x0000, 0x2400, 0xB651,	/* 98 */
> +	0xC9E0, 0x4247, 0x0A24, 0x0000, 0xAF19, 0x1004, 0x0000, 0x0000,	/* A0 */
> +	0x0000, 0x0013, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/* A8 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/* B0 */
> +	0x0000, 0x0000, 0x0000, 0x0060, 0x0000, 0x0000, 0x0000, 0x0000,	/* B8 */
> +	0x0000, 0x0000, 0x3010, 0xFA00, 0x0000, 0x0000, 0x0000, 0x0003,	/* C0 */
> +	0x1618, 0x8200, 0x8000, 0x0400, 0x050F, 0x0000, 0x0000, 0x0000,	/* C8 */
> +	0x4C93, 0x0000, 0x1000, 0x1120, 0x0010, 0x1242, 0x1242, 0x1E00,	/* D0 */
> +	0x0000, 0x0000, 0x0000, 0x00F8, 0x0000, 0x0041, 0x0800, 0x0000,	/* D8 */
> +	0x82A0, 0x572E, 0x2490, 0x14A9, 0x4E00, 0x0000, 0x0803, 0x0541,	/* E0 */
> +	0x0C15, 0x0000, 0x0000, 0x0400, 0x2626, 0x0000, 0x0000, 0x4200,	/* E8 */
> +	0x0000, 0xAA55, 0x1020, 0x0000, 0x0000, 0x5010, 0x0000, 0x0000,	/* F0 */
> +	0x0000, 0x0000, 0x5000, 0x0000, 0x0000, 0x0000, 0x02F2, 0x0000,	/* F8 */
> +	0x101F, 0xFDC0, 0x4000, 0x8010, 0x0110, 0x0006, 0x0000, 0x0000,	/*100 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*108 */
> +	0x04CF, 0x0000, 0x04CF, 0x0000, 0x04CF, 0x0000, 0x04C6, 0x0000,	/*110 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*118 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*120 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*128 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*130 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*138 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*140 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*148 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*150 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*158 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*160 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*168 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*170 */
> +	0x0000, 0x0000, 0x0000, 0x00F0, 0x08A2, 0x3112, 0x0A14, 0x0000,	/*178 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*180 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*188 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*190 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*198 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*1A0 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*1A8 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*1B0 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*1B8 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*1C0 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*1C8 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*1D0 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*1D8 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*1E0 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*1E8 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,	/*1F0 */
> +	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000	/*1F8 */
>  };
>  =

> -static int mvebu_a3700_comphy_smc(unsigned long function, unsigned long =
lane,
> -				  unsigned long mode)
> +static inline void reg_set(void __iomem *addr, u32 data, u32 mask)
>  {
> -	struct arm_smccc_res res;
> -	s32 ret;
> +	u32 reg_data;
>  =

> -	arm_smccc_smc(function, lane, mode, 0, 0, 0, 0, 0, &res);
> -	ret =3D res.a0;
> +	reg_data =3D readl(addr);
> +	reg_data &=3D ~mask;
> +	reg_data |=3D data;
> +	writel(reg_data, addr);
> +}
> +
> +static inline void reg_set16(void __iomem *addr, u16 data, u16 mask)
> +{
> +	u16 reg_data;
> +
> +	reg_data =3D readw(addr);
> +	reg_data &=3D ~mask;
> +	reg_data |=3D data;
> +	writew(reg_data, addr);
> +}
> +
> +/* PHY selector configures with corresponding modes */
> +static int mvebu_a3700_comphy_set_phy_selector(struct mvebu_a3700_comphy=
_lane *lane)
> +{
> +	u32 reg;
> +
> +	reg =3D readl(lane->priv->comphy_regs + COMPHY_SELECTOR_PHY_REG);
> +	switch (lane->mode) {
> +	case PHY_MODE_SATA:
> +		/* SATA must be in Lane2 */
> +		if (lane->id =3D=3D 2)
> +			reg &=3D ~COMPHY_SELECTOR_USB3_PHY_SEL_BIT;
> +		else
> +			goto error;
> +		break;
> +
> +	case PHY_MODE_ETHERNET:
> +		if (lane->id =3D=3D 0)
> +			reg &=3D ~COMPHY_SELECTOR_USB3_GBE1_SEL_BIT;
> +		else if (lane->id =3D=3D 1)
> +			reg &=3D ~COMPHY_SELECTOR_PCIE_GBE0_SEL_BIT;
> +		else
> +			goto error;
> +		break;
> +
> +	case PHY_MODE_USB_HOST_SS:
> +		if (lane->id =3D=3D 2)
> +			reg |=3D COMPHY_SELECTOR_USB3_PHY_SEL_BIT;
> +		else if (lane->id =3D=3D 0)
> +			reg |=3D COMPHY_SELECTOR_USB3_GBE1_SEL_BIT;
> +		else
> +			goto error;
> +		break;
> +
> +	case PHY_MODE_PCIE:
> +		/* PCIE must be in Lane1 */
> +		if (lane->id =3D=3D 1)
> +			reg |=3D COMPHY_SELECTOR_PCIE_GBE0_SEL_BIT;
> +		else
> +			goto error;
> +		break;
>  =

> -	switch (ret) {
> -	case SMCCC_RET_SUCCESS:
> -		return 0;
> -	case SMCCC_RET_NOT_SUPPORTED:
> -		return -EOPNOTSUPP;
>  	default:
> +		goto error;
> +	}
> +
> +	writel(reg, lane->priv->comphy_regs + COMPHY_SELECTOR_PHY_REG);
> +	return 0;
> +error:
> +	dev_err(lane->dev, "COMPHY[%d] mode[%d] is invalid\n", lane->id, lane->=
mode);
> +	return -EINVAL;
> +}
> +
> +/* It is only used for SATA and USB3 on comphy lane2. */
> +static void comphy_set_indirect(void __iomem *base_addr, u32 offset, u16=
 data,
> +				u16 mask, bool is_sata)
> +{
> +	/*
> +	 * When Lane 2 PHY is for USB3, access the PHY registers
> +	 * through indirect Address and Data registers:
> +	 * INDIR_ACC_PHY_ADDR (RD00E0178h [31:0]),
> +	 * INDIR_ACC_PHY_DATA (RD00E017Ch [31:0]),
> +	 * within the SATA Host Controller registers, Lane 2 base register
> +	 * offset is 0x200
> +	 */
> +	if (is_sata)
> +		writel(offset, base_addr + COMPHY_LANE2_INDIR_ADDR_OFFSET);
> +	else
> +		writel(USB3PHY_LANE2_REG_BASE_OFFSET + offset,
> +		       base_addr + COMPHY_LANE2_INDIR_ADDR_OFFSET);
> +
> +	reg_set(base_addr + COMPHY_LANE2_INDIR_DATA_OFFSET, data, mask);
> +}
> +
> +/* It is only used for SATA on comphy lane2. */
> +static void comphy_sata_set_indirect(void __iomem *base_addr, u32 reg_of=
fset,
> +				     u16 data, u16 mask)
> +{
> +	comphy_set_indirect(base_addr, reg_offset, data, mask, true);
> +}
> +
> +/* It is only used for USB3 indirect access on comphy lane2. */
> +static void comphy_usb3_set_indirect(void __iomem *base_addr, u32 reg_of=
fset,
> +				     u16 data, u16 mask)
> +{
> +	comphy_set_indirect(base_addr, reg_offset, data, mask, false);
> +}
> +
> +/* It is only used for USB3 direct access not on comphy lane2. */
> +static void comphy_usb3_set_direct(void __iomem *base_addr, u32 reg_offs=
et,
> +				   u16 data, u16 mask)
> +{
> +	reg_set16(base_addr + reg_offset * PHY_SHFT(USB3), data, mask);
> +}
> +
> +static void comphy_gbe_phy_init(void __iomem *gbe_phy_base, bool is_1gbp=
s)
> +{
> +	const int fix_arr_sz =3D ARRAY_SIZE(gbe_phy_init_fix);
> +	int addr, fix_idx;
> +	u16 val;
> +
> +	fix_idx =3D 0;
> +	for (addr =3D 0; addr < 512; addr++) {
> +		/*
> +		 * All PHY register values are defined in full for 3.125Gbps
> +		 * SERDES speed. The values required for 1.25 Gbps are almost
> +		 * the same and only few registers should be "fixed" in
> +		 * comparison to 3.125 Gbps values. These register values are
> +		 * stored in "gbe_phy_init_fix" array.
> +		 */
> +		if (!is_1gbps && gbe_phy_init_fix[fix_idx].addr =3D=3D addr) {
> +			/* Use new value */
> +			val =3D gbe_phy_init_fix[fix_idx].value;
> +			if (fix_idx < fix_arr_sz)
> +				fix_idx++;
> +		} else {
> +			val =3D gbe_phy_init[addr];
> +		}
> +
> +		reg_set16(GBE_PHY_ADDR(gbe_phy_base, addr), val, 0xFFFF);
> +	}
> +}
> +
> +static int mvebu_a3700_comphy_sata_power_on(struct mvebu_a3700_comphy_la=
ne *lane)
> +{
> +	void __iomem *sata_phy_base =3D lane->priv->sata_usb3_phy_regs;
> +	u32 offset, data =3D 0, ref_clk;
> +	int ret;
> +
> +	/* Configure phy selector for SATA */
> +	ret =3D mvebu_a3700_comphy_set_phy_selector(lane);
> +	if (ret)
> +		return ret;
> +
> +	/* Clear phy isolation mode to make it work in normal mode */
> +	offset =3D SATAPHY_LANE2_REG_BASE_OFFSET + COMPHY_ISOLATION_CTRL_REG;
> +	comphy_sata_set_indirect(sata_phy_base, offset, 0, PHY_ISOLATE_MODE);
> +
> +	/* 0. Check the Polarity invert bits */
> +	if (lane->invert_tx)
> +		data |=3D TXD_INVERT_BIT;
> +	if (lane->invert_rx)
> +		data |=3D RXD_INVERT_BIT;
> +
> +	offset =3D SATAPHY_LANE2_REG_BASE_OFFSET + COMPHY_SYNC_PATTERN_REG;
> +	comphy_sata_set_indirect(sata_phy_base, offset, data, TXD_INVERT_BIT |
> +				 RXD_INVERT_BIT);
> +
> +	/* 1. Select 40-bit data width */
> +	offset =3D SATAPHY_LANE2_REG_BASE_OFFSET + COMPHY_LOOPBACK_REG0;
> +	comphy_sata_set_indirect(sata_phy_base, offset, DATA_WIDTH_40BIT,
> +				 SEL_DATA_WIDTH_MASK);
> +
> +	/* 2. Select reference clock(25M) and PHY mode (SATA) */
> +	offset =3D SATAPHY_LANE2_REG_BASE_OFFSET + COMPHY_POWER_PLL_CTRL;
> +	if (lane->priv->xtal_is_40m)
> +		ref_clk =3D REF_CLOCK_SPEED_40M;
> +	else
> +		ref_clk =3D REF_CLOCK_SPEED_25M;
> +
> +	comphy_sata_set_indirect(sata_phy_base, offset, ref_clk | COMPHY_MODE_S=
ATA,
> +				 REF_FREF_SEL_MASK | COMPHY_MODE_MASK);
> +
> +	/* 3. Use maximum PLL rate (no power save) */
> +	offset =3D SATAPHY_LANE2_REG_BASE_OFFSET + COMPHY_KVCO_CAL_CTRL;
> +	comphy_sata_set_indirect(sata_phy_base, offset, USE_MAX_PLL_RATE_BIT,
> +				 USE_MAX_PLL_RATE_BIT);
> +
> +	/* 4. Reset reserved bit */
> +	comphy_sata_set_indirect(sata_phy_base, COMPHY_RESERVED_REG, 0,
> +				 PHYCTRL_FRM_PIN_BIT);
> +
> +	/* 5. Set vendor-specific configuration (It is done in sata driver) */
> +	/* XXX: in U-Boot below sequence was executed in this place, in Linux
> +	 * not.  Now it is done only in U-Boot before this comphy
> +	 * initialization - tests shows that it works ok, but in case of any
> +	 * future problem it is left for reference.
> +	 *   reg_set(MVEBU_REGS_BASE + 0xe00a0, 0, 0xffffffff);
> +	 *   reg_set(MVEBU_REGS_BASE + 0xe00a4, BIT(6), BIT(6));
> +	 */
> +
> +	/* Wait for > 55 us to allow PLL be enabled */
> +	udelay(PLL_SET_DELAY_US);
> +
> +	/* Polling status */
> +	writel(SATAPHY_LANE2_REG_BASE_OFFSET + COMPHY_LOOPBACK_REG0,
> +	       sata_phy_base + COMPHY_LANE2_INDIR_ADDR_OFFSET);
> +
> +	ret =3D readl_poll_timeout(sata_phy_base + COMPHY_LANE2_INDIR_DATA_OFFS=
ET,
> +				 data, data & PLL_READY_TX_BIT,
> +				 COMPHY_PLL_SLEEP, COMPHY_PLL_TIMEOUT);
> +	if (ret) {
> +		dev_err(lane->dev, "Failed to lock SATA PLL\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int mvebu_a3700_comphy_ethernet_power_on(struct mvebu_a3700_comph=
y_lane *lane)
> +{
> +	void __iomem *comphy_base =3D lane->priv->comphy_regs;
> +	void __iomem *gbe_phy_base;
> +	u32 mask, data;
> +	int ret;
> +
> +	/* Set selector */
> +	ret =3D mvebu_a3700_comphy_set_phy_selector(lane);
> +	if (ret)
> +		return ret;
> +
> +	/* GBE PHY Base address
> +	 * COMPHY Lane0 -- USB3/GBE1
> +	 * COMPHY Lane1 -- PCIe/GBE0
> +	 */
> +	if (lane->id =3D=3D 0) {
> +		/* Get usb3 and gbe register base address */
> +		gbe_phy_base =3D lane->priv->usb3_gbe1_phy_regs;
> +	} else {
> +		/* Get pcie and gbe register base address */
> +		gbe_phy_base =3D lane->priv->pcie_gbe0_phy_regs;
> +	}
> +
> +	/*
> +	 * 1. Reset PHY by setting PHY input port PIN_RESET=3D1.
> +	 * 2. Set PHY input port PIN_TX_IDLE=3D1, PIN_PU_IVREF=3D1 to keep
> +	 *    PHY TXP/TXN output to idle state during PHY initialization
> +	 * 3. Set PHY input port PIN_PU_PLL=3D0, PIN_PU_RX=3D0, PIN_PU_TX=3D0.
> +	 */
> +	data =3D PIN_PU_IVEREF_BIT | PIN_TX_IDLE_BIT | PIN_RESET_COMPHY_BIT;
> +	mask =3D PIN_RESET_CORE_BIT | PIN_PU_PLL_BIT | PIN_PU_RX_BIT |
> +		PIN_PU_TX_BIT | PHY_RX_INIT_BIT;
> +	reg_set(comphy_base + COMPHY_PHY_CFG1_OFFSET(lane->id), data, mask);
> +
> +	/* 4. Release reset to the PHY by setting PIN_RESET=3D0. */
> +	data =3D 0;
> +	mask =3D PIN_RESET_COMPHY_BIT;
> +	reg_set(comphy_base + COMPHY_PHY_CFG1_OFFSET(lane->id), data, mask);
> +
> +	/*
> +	 * 5. Set PIN_PHY_GEN_TX[3:0] and PIN_PHY_GEN_RX[3:0] to decide COMPHY
> +	 * bit rate
> +	 */
> +	switch (lane->submode) {
> +	case PHY_INTERFACE_MODE_SGMII:
> +	case PHY_INTERFACE_MODE_1000BASEX:
> +		/* SGMII 1G, SerDes speed 1.25G */
> +		data |=3D SERDES_SPEED_1_25_G << GEN_RX_SEL_OFFSET;
> +		data |=3D SERDES_SPEED_1_25_G << GEN_TX_SEL_OFFSET;
> +		break;
> +	case PHY_INTERFACE_MODE_2500BASEX:
> +		/* 2500Base-X, SerDes speed 3.125G */
> +		data |=3D SERDES_SPEED_2_5_G << GEN_RX_SEL_OFFSET;
> +		data |=3D SERDES_SPEED_2_5_G << GEN_TX_SEL_OFFSET;
> +		break;
> +	default:
> +		/* Other rates are not supported */
> +		dev_err(lane->dev, "unsupported phy speed %d on comphy lane%d\n",
> +			lane->submode, lane->id);
>  		return -EINVAL;
>  	}
> +	mask =3D GEN_RX_SEL_MASK | GEN_TX_SEL_MASK;
> +	reg_set(comphy_base + COMPHY_PHY_CFG1_OFFSET(lane->id), data, mask);
> +
> +	/*
> +	 * 6. Wait 10mS for bandgap and reference clocks to stabilize; then
> +	 * start SW programming.
> +	 */
> +	mdelay(10);
> +
> +	/* 7. Program COMPHY register PHY_MODE */
> +	data =3D COMPHY_MODE_SERDES;
> +	mask =3D COMPHY_MODE_MASK;
> +	reg_set16(GBE_PHY_ADDR(gbe_phy_base, COMPHY_POWER_PLL_CTRL), data, mask=
);
> +
> +	/*
> +	 * 8. Set COMPHY register REFCLK_SEL to select the correct REFCLK
> +	 * source
> +	 */
> +	data =3D 0;
> +	mask =3D PHY_REF_CLK_SEL;
> +	reg_set16(GBE_PHY_ADDR(gbe_phy_base, COMPHY_MISC_REG0_ADDR), data, mask=
);
> +
> +	/*
> +	 * 9. Set correct reference clock frequency in COMPHY register
> +	 * REF_FREF_SEL.
> +	 */
> +	if (lane->priv->xtal_is_40m)
> +		data =3D REF_CLOCK_SPEED_50M;
> +	else
> +		data =3D REF_CLOCK_SPEED_25M;
> +
> +	mask =3D REF_FREF_SEL_MASK;
> +	reg_set16(GBE_PHY_ADDR(gbe_phy_base, COMPHY_POWER_PLL_CTRL), data, mask=
);
> +
> +	/* 10. Program COMPHY register PHY_GEN_MAX[1:0]
> +	 * This step is mentioned in the flow received from verification team.
> +	 * However the PHY_GEN_MAX value is only meaningful for other interfaces
> +	 * (not SERDES). For instance, it selects SATA speed 1.5/3/6 Gbps or PC=
Ie
> +	 * speed 2.5/5 Gbps
> +	 */
> +
> +	/*
> +	 * 11. Program COMPHY register SEL_BITS to set correct parallel data
> +	 * bus width
> +	 */
> +	data =3D DATA_WIDTH_10BIT;
> +	mask =3D SEL_DATA_WIDTH_MASK;
> +	reg_set16(GBE_PHY_ADDR(gbe_phy_base, COMPHY_LOOPBACK_REG0), data, mask);
> +
> +	/*
> +	 * 12. As long as DFE function needs to be enabled in any mode,
> +	 * COMPHY register DFE_UPDATE_EN[5:0] shall be programmed to 0x3F
> +	 * for real chip during COMPHY power on.
> +	 * The step 14 exists (and empty) in the original initialization flow
> +	 * obtained from the verification team. According to the functional
> +	 * specification DFE_UPDATE_EN already has the default value 0x3F
> +	 */
> +
> +	/*
> +	 * 13. Program COMPHY GEN registers.
> +	 * These registers should be programmed based on the lab testing result
> +	 * to achieve optimal performance. Please contact the CEA group to get
> +	 * the related GEN table during real chip bring-up. We only required to
> +	 * run though the entire registers programming flow defined by
> +	 * "comphy_gbe_phy_init" when the REF clock is 40 MHz. For REF clock
> +	 * 25 MHz the default values stored in PHY registers are OK.
> +	 */
> +	dev_dbg(lane->dev, "Running C-DPI phy init %s mode\n",
> +		lane->submode =3D=3D PHY_INTERFACE_MODE_2500BASEX ? "2G5" : "1G");
> +	if (lane->priv->xtal_is_40m)
> +		comphy_gbe_phy_init(gbe_phy_base, lane->submode !=3D PHY_INTERFACE_MOD=
E_2500BASEX);
> +
> +	/*
> +	 * 14. [Simulation Only] should not be used for real chip.
> +	 * By pass power up calibration by programming EXT_FORCE_CAL_DONE
> +	 * (R02h[9]) to 1 to shorten COMPHY simulation time.
> +	 */
> +
> +	/*
> +	 * 15. [Simulation Only: should not be used for real chip]
> +	 * Program COMPHY register FAST_DFE_TIMER_EN=3D1 to shorten RX training
> +	 * simulation time.
> +	 */
> +
> +	/*
> +	 * 16. Check the PHY Polarity invert bit
> +	 */
> +	data =3D 0x0;
> +	if (lane->invert_tx)
> +		data |=3D TXD_INVERT_BIT;
> +	if (lane->invert_rx)
> +		data |=3D RXD_INVERT_BIT;
> +	mask =3D TXD_INVERT_BIT | RXD_INVERT_BIT;
> +	reg_set16(GBE_PHY_ADDR(gbe_phy_base, COMPHY_SYNC_PATTERN_REG), data, ma=
sk);
> +
> +	/*
> +	 * 17. Set PHY input ports PIN_PU_PLL, PIN_PU_TX and PIN_PU_RX to 1 to
> +	 * start PHY power up sequence. All the PHY register programming should
> +	 * be done before PIN_PU_PLL=3D1. There should be no register programmi=
ng
> +	 * for normal PHY operation from this point.
> +	 */
> +	reg_set(comphy_base + COMPHY_PHY_CFG1_OFFSET(lane->id),
> +		PIN_PU_PLL_BIT | PIN_PU_RX_BIT | PIN_PU_TX_BIT,
> +		PIN_PU_PLL_BIT | PIN_PU_RX_BIT | PIN_PU_TX_BIT);
> +
> +	/*
> +	 * 18. Wait for PHY power up sequence to finish by checking output ports
> +	 * PIN_PLL_READY_TX=3D1 and PIN_PLL_READY_RX=3D1.
> +	 */
> +	ret =3D readl_poll_timeout(comphy_base + COMPHY_PHY_STATUS_OFFSET(lane-=
>id),
> +				 data, (data & (PHY_PLL_READY_TX_BIT | PHY_PLL_READY_RX_BIT)) =3D=3D
> +				               (PHY_PLL_READY_TX_BIT | PHY_PLL_READY_RX_BIT),

checkpatch complains about using tabs, pls fix. Do run checkpatch...

> +				 COMPHY_PLL_SLEEP, COMPHY_PLL_TIMEOUT);
> +	if (ret) {
> +		dev_err(lane->dev, "Failed to lock PLL for SERDES PHY %d\n", lane->id);
> +		return ret;
> +	}
> +
> +	/*
> +	 * 19. Set COMPHY input port PIN_TX_IDLE=3D0
> +	 */
> +	reg_set(comphy_base + COMPHY_PHY_CFG1_OFFSET(lane->id),
> +		0x0, PIN_TX_IDLE_BIT);
> +
> +	/*
> +	 * 20. After valid data appear on PIN_RXDATA bus, set PIN_RX_INIT=3D1. =
To
> +	 * start RX initialization. PIN_RX_INIT_DONE will be cleared to 0 by the
> +	 * PHY After RX initialization is done, PIN_RX_INIT_DONE will be set to
> +	 * 1 by COMPHY Set PIN_RX_INIT=3D0 after PIN_RX_INIT_DONE=3D 1. Please
> +	 * refer to RX initialization part for details.
> +	 */
> +	reg_set(comphy_base + COMPHY_PHY_CFG1_OFFSET(lane->id),
> +		PHY_RX_INIT_BIT, PHY_RX_INIT_BIT);
> +
> +	ret =3D readl_poll_timeout(comphy_base + COMPHY_PHY_STATUS_OFFSET(lane-=
>id),
> +				 data, (data & (PHY_PLL_READY_TX_BIT | PHY_PLL_READY_RX_BIT)) =3D=3D
> +				               (PHY_PLL_READY_TX_BIT | PHY_PLL_READY_RX_BIT),

Here as well

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
