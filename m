Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0E2606A320
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 13:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=P5wlCqrq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=myqh4M6I
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AD6bPEaJAsW7X3Nydbq1L+SAR99RdhJeAJoQBfdWs/8=; b=P5wlCqrqOKIDnc
	DH98FkhBlts4dVcISTvTyCZ9W501HyhoG8bSOhbV9QLsbPwPakq4zH9RkctDS0tpnzOc0KSQYo3LL
	nJGBPAB5uPnzAAb07DfTaUVYoZYqSM79hM6OKmxx+R4sRFw8HMN7CRyv59W3sbrSDY/m9U24p5w/q
	aU1BLbYNrhOnwuj5D7oecfYjlr4oxw4VEt7K1wVFBp10G/2GXiBavwVmM7VmbRabIiA3Azhh6d+FO
	OodArYLvrJ129Dm8Z0E82EJBcFyzQJDhdnfR8tJoYbKgFWxHfTwZYm+8o/WnUW30AVXaPBufs9HQn
	ZZz30RNhjoQu6othenAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ9X2-00000009jtE-2KzI;
	Tue, 20 Oct 2026 13:05:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ9X1-00000009jsV-1kfa
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 13:05:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6B1C860D82;
	Tue, 20 Oct 2026 13:05:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A33321F000C4;
	Tue, 20 Oct 2026 13:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792501530;
	bh=YDc06yRlsSNlXEmulUrV+Mwea5zL3HsZI3CQkUjyJAw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=myqh4M6IAWFmqgXG16kpxErWnj01CbEjVgU4LBAptO3UADlbU19+sv6x/B9PEc7Cb
	 3jSgOY1ApBSFT+V0uFzp8vLOZZOTiX/r7JyoRKr+ZGHP9ygA8E7K3CZuOR+ycWE4F7
	 zKbY3RaYPCERlVReQav5DTgE9UYK35x5N+9oQ3jjRjOe70WtIFo/8ASpiIvcce6gVb
	 tUkQ59WcDlectF6R7qse4nYQqlrrAVqXBS4h8ATJW5VlrtDbnt24YpY5b8CKbdwbqo
	 oRL5B6DHok1P3BHrNkdtMKx0y6MoRA5Eka8x7ireF5vEFmQNDppxKYmj2FFSCu7T7K
	 q2L//gCDcU27g==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sriram Dash <quic_sriramd@quicinc.com>
Subject: Re: [PATCH v3 2/2] phy: qcom-snps-femto-v2: Add support for SA8255P
In-Reply-To: <179216548965.106618.12539639688235621089.b4-reply@b4>
References: <20261002-phy-qcom-snps-femto-v2-8255-v3-0-342542bd9bc6@kernel.org>
 <20261002-phy-qcom-snps-femto-v2-8255-v3-2-342542bd9bc6@kernel.org>
 <179216548965.106618.12539639688235621089.b4-reply@b4>
Date: Tue, 20 Oct 2026 15:05:27 +0200
Message-ID: <xhkdbzew834ko.fsf@mkorpers-koolstof.csb>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Oct 16, 2026 at 21:14, Manivannan Sadhasivam <mani@kernel.org> wrote:

> On 2026-10-02 11:41 +0200, Mattijs Korpershoek wrote:
>> From: Sriram Dash <quic_sriramd@quicinc.com>
>> 
>> The Qualcomm automotive SA8255p SoC relies on firmware to configure
>> platform resources, including clocks, interconnects and TLMM.
>> The driver requests resources operations over SCMI using power protocols.
>> 
>> The SCMI power protocol enables or disables resources like clocks,
>> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
>> such as resume/suspend, to control power on/off.
>> 
>> Power domain "core" controls the GDSC, resets, and TLMM (GPIOs)
>> whereas power domain "transfer" controls clocks and interconnects.
>> 
>> In this variant, two disjoint sets of resources are modeled against
>> the power domain suppliers which can be turned on/off to achieve modeled
>> device states. Two modeled low power states d1 and d3 are supported.
>> 
>> transition: d0 <--> d3  :: both core and transfer suppliers
>> transition: d0 <--> d1  :: only transfer supplier
>> 
>> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
>> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 127 ++++++++++++++++++++++++--
>>  1 file changed, 118 insertions(+), 9 deletions(-)
>> 
>> diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>> index 980ad1fb1e2e..9fdf7ae681b6 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
>> @@ -12,6 +12,7 @@
>>  #include <linux/of.h>
>>  #include <linux/phy/phy.h>
>>  #include <linux/platform_device.h>
>> +#include <linux/pm_domain.h>
>>  #include <linux/regmap.h>
>>  #include <linux/regulator/consumer.h>
>>  #include <linux/reset.h>
>> @@ -95,6 +96,7 @@ struct override_param_map {
>>  	u8 table_size;
>>  	u8 reg_offset;
>>  	u8 param_mask;
>> +	bool fw_managed;
>>  };
>>  
>>  struct phy_override_seq {
>> @@ -121,6 +123,7 @@ struct phy_override_seq {
>>   * @phy_initialized: if PHY has been initialized correctly
>>   * @mode: contains the current mode the PHY is in
>>   * @update_seq_cfg: tuning parameters for phy init
>> + * @pd_list: list of power domains associated with the device
>>   */
>>  struct qcom_snps_hsphy {
>>  	struct device *dev;
>> @@ -136,8 +139,81 @@ struct qcom_snps_hsphy {
>>  	bool phy_initialized;
>>  	enum phy_mode mode;
>>  	struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
>> +
>> +	struct dev_pm_domain_list *pd_list;
>>  };
>>  
>> +static void qcom_snps_domain_detach(void *data)
>> +{
>> +	struct qcom_snps_hsphy *hsphy = data;
>> +
>> +	dev_pm_domain_detach_list(hsphy->pd_list);
>> +}
>> +
>> +static int qcom_snps_domain_attach(struct qcom_snps_hsphy *hsphy)
>> +{
>> +	struct dev_pm_domain_attach_data pd_data = {
>> +		.pd_flags       = PD_FLAG_NO_DEV_LINK,
>> +		.pd_names       = (const char*[]) { "core", "transfer" },
>> +		.num_pd_names   = 2,
>> +	};
>> +	struct device *dev = hsphy->dev;
>> +	int ret;
>> +
>> +	ret = dev_pm_domain_attach_list(dev, &pd_data, &hsphy->pd_list);
>> +	if (ret < 0)
>> +		return dev_err_probe(dev, ret, "domain attach failed\n");
>> +
>> +	return 0;
>> +}
>> +
>> +/* d3_to_d0 transition by turning on all the suppliers */
>> +static int qcom_snps_d3_to_d0(struct qcom_snps_hsphy *hsphy)
>> +{
>> +	int ret;
>> +
>> +	if (!hsphy->pd_list)
>> +		return 0;
>> +
>> +	ret = pm_runtime_resume_and_get(hsphy->pd_list->pd_devs[0]);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = pm_runtime_resume_and_get(hsphy->pd_list->pd_devs[1]);
>> +	if (ret)
>> +		pm_runtime_put_sync(hsphy->pd_list->pd_devs[0]);
>> +
>> +	return ret;
>> +}
>> +
>> +/* d0_to_d3 transition by turning off all the suppliers */
>> +static void qcom_snps_d0_to_d3(struct qcom_snps_hsphy *hsphy)
>> +{
>> +	if (!hsphy->pd_list)
>> +		return;
>> +
>> +	pm_runtime_put_sync(hsphy->pd_list->pd_devs[1]);
>> +	pm_runtime_put_sync(hsphy->pd_list->pd_devs[0]);
>> +}
>> +
>> +/* d1_to_d0 transition by turning on the 'transfer' supplier */
>> +static int qcom_snps_d1_to_d0(struct qcom_snps_hsphy *hsphy)
>> +{
>> +	if (!hsphy->pd_list)
>> +		return 0;
>> +
>> +	return pm_runtime_resume_and_get(hsphy->pd_list->pd_devs[1]);
>> +}
>> +
>> +/* d0_to_d1 transition by turning off the 'transfer' supplier */
>> +static void qcom_snps_d0_to_d1(struct qcom_snps_hsphy *hsphy)
>> +{
>> +	if (!hsphy->pd_list)
>> +		return;
>> +
>> +	pm_runtime_put_sync(hsphy->pd_list->pd_devs[1]);
>> +}
>> +
>>  static int qcom_snps_hsphy_clk_init(struct qcom_snps_hsphy *hsphy)
>>  {
>>  	struct device *dev = hsphy->dev;
>> @@ -196,6 +272,8 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
>>  					   0, USB2_AUTO_RESUME);
>>  	}
>>  
>> +	qcom_snps_d0_to_d1(hsphy);
>> +
>>  	return 0;
>>  }
>>  
>> @@ -203,7 +281,7 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
>>  {
>>  	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
>>  
>> -	return 0;
>> +	return qcom_snps_d1_to_d0(hsphy);
>>  }
>>  
>>  static int __maybe_unused qcom_snps_hsphy_runtime_suspend(struct device *dev)
>> @@ -316,6 +394,10 @@ static const struct override_param ls_fs_output_impedance_sc7280[] = {
>>  	{ 1310, 0 },
>>  };
>>  
>> +static const struct override_param_map sa8255p_snps_hs_phy = {
>> +	.fw_managed = true,
>> +};
>> +
>>  static const struct override_param_map sc7280_snps_7nm_phy[] = {
>>  	{
>>  		"qcom,hs-disconnect-bp",
>> @@ -390,9 +472,15 @@ static int qcom_snps_hsphy_init(struct phy *phy)
>>  
>>  	dev_vdbg(&phy->dev, "%s(): Initializing SNPS HS phy\n", __func__);
>>  
>> +	ret = qcom_snps_d3_to_d0(hsphy);
>> +	if (ret < 0) {
>> +		dev_err(hsphy->dev, "Failed to transition to d0 state\n");
>> +		return ret;
>> +	}
>> +
>>  	ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
>
> Why do you still control regulator natively in the SCMI path?

That's an oversight on my end. Thank you for catching it. I will fix for v4.

>
> - Mani

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
