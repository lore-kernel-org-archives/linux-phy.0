Return-Path: <SRS0=Wr7y=JS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC3FDC433ED
	for <linux-phy@archiver.kernel.org>; Wed, 21 Apr 2021 04:45:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 513E76140F
	for <linux-phy@archiver.kernel.org>; Wed, 21 Apr 2021 04:45:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 513E76140F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:In-reply-to:Subject:Cc:
	To:From:References:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R9fUKqwc9jS/NHHaLZiFa5A1J4mc0vJfY7AxJeA3wWU=; b=JEjGJjdHFrMjTncg80m83dEEY
	yTqWJlMAeoTIrIKX5cpeXshtMzWgGFpjUfABnRGlob47aiG687ggG4uW8St6rMp0kvpfgezxojCns
	ODxTsyGA23ZM+mSFtAJZFYosEtpI+X4oeHVcBB3MSBthJRPAkLvGwC79FQdJjS2Mt0imjE//h8of0
	CP0HNRChyWYzMoCKrT9oncObAGHEdXO4KuaHNMRUR8fhTPJ1isCCGxzEuuWkiBwQer6e9kzHFD7D6
	eryykZRK0Za0KVxJrZof5wh2Yrl8NiYrDS0A2Eg0I9s5/5mVNI/2svij2jkpXa6zA7KvWTMYE1UKw
	7QOhiV/mA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZ4jy-00Debv-H9; Wed, 21 Apr 2021 04:45:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ4ji-00DeaS-Re; Wed, 21 Apr 2021 04:45:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 Date:In-reply-to:Subject:Cc:To:From:References:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jIszFoiv9Hv5yaHQVn2EnK/a2BkaHxi/A+smMP5b7y4=; b=R/xUuE6TSK9LXSgbJcinEnB+ZI
 QyyLiiwerLNvxXaSIwzoUY4gJMpwiN4xnsLcuyhloG9sTcyKQDpwfwbneFeGDQJtm7MlKZrAens0J
 SqjoR5uiS2PUqa2LFyZFJDjq5q3byi3ZwjyrYQ6aL7NINxYFkWTHwxswgwiLdUNREf8rKqUFW1G0w
 biRWGcvDSc1LgpTxuCbcPea1gLZnwXrjNy9LjXFMztMGeN12b+eerRdDdOwMJo0vrdZ8kt5C+lnS5
 SN68Jl0JPsIfe7ptBp46f0N4mLhSYyo6AL/bes4Uc+1OEDrHqY+J/qqG63BlZbeU1uGywFEK9VH5g
 905UKCVA==;
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ4jd-00Cayf-1p; Wed, 21 Apr 2021 04:45:13 +0000
Received: from tarshish (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 402D64405EB;
 Wed, 21 Apr 2021 07:45:02 +0300 (IDT)
References: <cover.1618916235.git.baruch@tkos.co.il>
 <c6ff03d1377ea9b5ff40ab283c884aeff6254dd9.1618916235.git.baruch@tkos.co.il>
 <20210420161855.GA3402221@robh.at.kernel.org>
User-agent: mu4e 1.4.15; emacs 27.1
From: Baruch Siach <baruch@tkos.co.il>
To: Rob Herring <robh@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Selvam Sathappan Periakaruppan
 <speriaka@codeaurora.org>, Kathiravan T <kathirav@codeaurora.org>, Bjorn
 Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/5] PCI: qcom: add support for IPQ60xx PCIe controller
In-reply-to: <20210420161855.GA3402221@robh.at.kernel.org>
Date: Wed, 21 Apr 2021 07:45:01 +0300
Message-ID: <87r1j4kzzm.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_214509_594585_AF49FCA6 
X-CRM114-Status: GOOD (  31.80  )
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

Hi Rob,

Thanks for your review.

I have a few comments below.

On Tue, Apr 20 2021, Rob Herring wrote:
> On Tue, Apr 20, 2021 at 02:21:36PM +0300, Baruch Siach wrote:
>> From: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
>> 
>> IPQ60xx series of SoCs have one port of PCIe gen 3. Add support for that
>> platform.
>> 
>> The code is based on downstream Codeaurora kernel v5.4. Split out the
>> registers access part from .init into .post_init. Registers are only
>> accessible after phy_power_on().
>> 
>> Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
>> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
>> ---
>>  drivers/pci/controller/dwc/pcie-qcom.c | 279 +++++++++++++++++++++++++
>>  1 file changed, 279 insertions(+)
>> 
>> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
>> index 8a7a300163e5..3e27de744738 100644
>> --- a/drivers/pci/controller/dwc/pcie-qcom.c
>> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
>> @@ -41,6 +41,31 @@
>>  #define L23_CLK_RMV_DIS				BIT(2)
>>  #define L1_CLK_RMV_DIS				BIT(1)
>>  
>> +#define PCIE_ATU_CR1_OUTBOUND_6_GEN3		0xC00
>> +#define PCIE_ATU_CR2_OUTBOUND_6_GEN3		0xC04
>> +#define PCIE_ATU_LOWER_BASE_OUTBOUND_6_GEN3	0xC08
>> +#define PCIE_ATU_UPPER_BASE_OUTBOUND_6_GEN3	0xC0C
>> +#define PCIE_ATU_LIMIT_OUTBOUND_6_GEN3		0xC10
>> +#define PCIE_ATU_LOWER_TARGET_OUTBOUND_6_GEN3	0xC14
>> +#define PCIE_ATU_UPPER_TARGET_OUTBOUND_6_GEN3	0xC18
>> +
>> +#define PCIE_ATU_CR1_OUTBOUND_7_GEN3		0xE00
>> +#define PCIE_ATU_CR2_OUTBOUND_7_GEN3		0xE04
>> +#define PCIE_ATU_LOWER_BASE_OUTBOUND_7_GEN3	0xE08
>> +#define PCIE_ATU_UPPER_BASE_OUTBOUND_7_GEN3	0xE0C
>> +#define PCIE_ATU_LIMIT_OUTBOUND_7_GEN3		0xE10
>> +#define PCIE_ATU_LOWER_TARGET_OUTBOUND_7_GEN3	0xE14
>> +#define PCIE_ATU_UPPER_TARGET_OUTBOUND_7_GEN3 	0xE18
>
> ATU registers are standard DWC registers. Plus upstream now dynamically 
> detects how many ATU regions there are.
>
>> +#define PCIE20_COMMAND_STATUS			0x04
>> +#define BUS_MASTER_EN				0x7
>> +#define PCIE20_DEVICE_CONTROL2_STATUS2		0x98
>> +#define PCIE_CAP_CPL_TIMEOUT_DISABLE		0x10
>
> All PCI standard registers.

PCIE20_COMMAND_STATUS is indeed the common PCI_COMMAND. I could not find
anything that matches PCIE20_DEVICE_CONTROL2_STATUS2. Where should I
look?

>
>> +#define PCIE30_GEN3_RELATED_OFF			0x890
>
> Looks like a DWC port logic register. The define at a minimum goes in 
> the common code. We probably already have one. Code touching the 
> register should ideally be there too (hint: look at the other drivers). 

pcie-tegra194.c uses the equivalent GEN3_RELATED_OFF. So I can move the
definition to a common header. As for the code, I don't know. The tegra
configuration sequence involves other registers as well.

[snip]

>> +static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
>> +{
>> +	struct dw_pcie *pci = pcie->pci;
>> +	u16 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
>> +	u32 val;
>> +	int i;
>> +
>> +	writel(SLV_ADDR_SPACE_SZ,
>> +		pcie->parf + PCIE20_v3_PARF_SLV_ADDR_SPACE_SIZE);
>> +
>> +	val = readl(pcie->parf + PCIE20_PARF_PHY_CTRL);
>> +	val &= ~BIT(0);
>
> What's BIT(0)?

I have no idea. I have no access to hardware documentation. I'm just
porting working code from the Codeaurora tree.

>
>> +	writel(val, pcie->parf + PCIE20_PARF_PHY_CTRL);
>> +
>> +	writel(0, pcie->parf + PCIE20_PARF_DBI_BASE_ADDR);
>> +
>> +	writel(DEVICE_TYPE_RC, pcie->parf + PCIE20_PARF_DEVICE_TYPE);
>> +	writel(BYPASS | MSTR_AXI_CLK_EN | AHB_CLK_EN,
>> +		pcie->parf + PCIE20_PARF_MHI_CLOCK_RESET_CTRL);
>> +	writel(RXEQ_RGRDLESS_RXTS | GEN3_ZRXDC_NONCOMPL,
>> +		pci->dbi_base + PCIE30_GEN3_RELATED_OFF);
>> +
>> +	writel(MST_WAKEUP_EN | SLV_WAKEUP_EN | MSTR_ACLK_CGC_DIS
>> +		| SLV_ACLK_CGC_DIS | CORE_CLK_CGC_DIS |
>> +		AUX_PWR_DET | L23_CLK_RMV_DIS | L1_CLK_RMV_DIS,
>> +		pcie->parf + PCIE20_PARF_SYS_CTRL);
>> +
>> +	writel(0, pcie->parf + PCIE20_PARF_Q2A_FLUSH);
>> +
>> +	writel(BUS_MASTER_EN, pci->dbi_base + PCIE20_COMMAND_STATUS);
>
> Pretty sure the DWC core or PCI core does this already.
>
>> +
>> +	writel(DBI_RO_WR_EN, pci->dbi_base + PCIE20_MISC_CONTROL_1_REG);
>> +	writel(PCIE_CAP_LINK1_VAL, pci->dbi_base + offset + PCI_EXP_SLTCAP);
>> +
>> +	/* Configure PCIe link capabilities for ASPM */
>> +	val = readl(pci->dbi_base + offset + PCI_EXP_LNKCAP);
>> +	val &= ~PCI_EXP_LNKCAP_ASPMS;
>> +	writel(val, pci->dbi_base + offset + PCI_EXP_LNKCAP);
>> +
>> +	writel(PCIE_CAP_CPL_TIMEOUT_DISABLE, pci->dbi_base +
>> +		PCIE20_DEVICE_CONTROL2_STATUS2);
>> +
>> +	writel(PCIE_CAP_CURR_DEEMPHASIS | SPEED_GEN3,
>> +			pci->dbi_base + offset + PCI_EXP_DEVCTL2);
>
> This all looks like stuff that should be in the DWC core code. Maybe we 
> need an ASPM disable quirk or something? That's probably somewhat 
> common.

Where in common code should that be? Which part is quirky?

>> +
>> +	for (i = 0;i < 256;i++)
>> +		writel(0x0, pcie->parf + PCIE20_PARF_BDF_TO_SID_TABLE_N
>> +				+ (4 * i));
>> +
>
>> +	writel(0x4, pci->atu_base + PCIE_ATU_CR1_OUTBOUND_6_GEN3);
>> +	writel(0x90000000, pci->atu_base + PCIE_ATU_CR2_OUTBOUND_6_GEN3);
>> +	writel(0x0, pci->atu_base + PCIE_ATU_LOWER_BASE_OUTBOUND_6_GEN3);
>> +	writel(0x0, pci->atu_base + PCIE_ATU_UPPER_BASE_OUTBOUND_6_GEN3);
>> +	writel(0x00107FFFF, pci->atu_base + PCIE_ATU_LIMIT_OUTBOUND_6_GEN3);
>> +	writel(0x0, pci->atu_base + PCIE_ATU_LOWER_TARGET_OUTBOUND_6_GEN3);
>> +	writel(0x0, pci->atu_base + PCIE_ATU_UPPER_TARGET_OUTBOUND_6_GEN3);
>> +	writel(0x5, pci->atu_base + PCIE_ATU_CR1_OUTBOUND_7_GEN3);
>> +	writel(0x90000000, pci->atu_base + PCIE_ATU_CR2_OUTBOUND_7_GEN3);
>> +	writel(0x200000, pci->atu_base + PCIE_ATU_LOWER_BASE_OUTBOUND_7_GEN3);
>> +	writel(0x0, pci->atu_base + PCIE_ATU_UPPER_BASE_OUTBOUND_7_GEN3);
>> +	writel(0x7FFFFF, pci->atu_base + PCIE_ATU_LIMIT_OUTBOUND_7_GEN3);
>> +	writel(0x0, pci->atu_base + PCIE_ATU_LOWER_TARGET_OUTBOUND_7_GEN3);
>> +	writel(0x0, pci->atu_base + PCIE_ATU_UPPER_TARGET_OUTBOUND_7_GEN3);
>
> This should all be coming from 'ranges' in the DT. If not, why not?

I'll try to drop it and see if it works. I see that common code
overwrites this area anyway.

>
> If you haven't caught the theme yet, everything outside of PARF register 
> accesses had better have a good explanation why they can't be in common 
> code.
>
>> +
>> +	return 0;
>> +}
>> +
>>  static int qcom_pcie_link_up(struct dw_pcie *pci)
>>  {
>>  	u16 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
>> @@ -1456,6 +1720,15 @@ static const struct qcom_pcie_ops ops_1_9_0 = {
>>  	.config_sid = qcom_pcie_config_sid_sm8250,
>>  };
>>  
>> +/* Qcom IP rev.: 2.9.0  Synopsys IP rev.: 5.00a */
>> +static const struct qcom_pcie_ops ops_2_9_0 = {
>> +	.get_resources = qcom_pcie_get_resources_2_9_0,
>> +	.init = qcom_pcie_init_2_9_0,
>> +	.post_init = qcom_pcie_post_init_2_9_0,
>> +	.deinit = qcom_pcie_deinit_2_9_0,
>> +	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
>> +};
>> +
>>  static const struct dw_pcie_ops dw_pcie_ops = {
>>  	.link_up = qcom_pcie_link_up,
>>  	.start_link = qcom_pcie_start_link,
>> @@ -1508,6 +1781,11 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>>  		goto err_pm_runtime_put;
>>  	}
>>  
>> +	/* We need ATU for .post_init */
>> +	pci->atu_base = devm_platform_ioremap_resource_byname(pdev, "atu");
>
> The DWC core handles this now.

With ATU code in .post_init gone, we can remove this as well.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
