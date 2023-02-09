Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 752C7C05027
	for <linux-phy@archiver.kernel.org>; Thu,  9 Feb 2023 14:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5j+ld4G9pOXg7lWc9o86pvTIuPpkPBwGNOWpi74kAtY=; b=jnhTRFHHUE24t6
	LV8yUYZQyc5BGLL3Sp/I7OBgk1Eh2+bTZYTcnR/uY2bS5cHb/yraK19MzRvor9M/hNDeiTp/1y/W9
	a5HG4sIn6rP5SXRetb9bXAq8t7n0fzZzPhHtYB6Bz9zNqqRXxZP9TLgPCLdRZ+Y6josWwqV04/ZqN
	bk9F3mVon1VTYT6myuv1dPCf7kVBXLpNTAF5Q+vk5AnyIz5t6LlmTmnXNtGd2VjQB/0iB6VRgYrOE
	p8BjXUDbIMJG7suixtIWLNpVl597SyawjPCLSs3gVlSS9+zoS/kFiQEHbz0SUCT8taCcLAnvcCpEp
	BAN7L4Tjr3ga+oBJ/o9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQ80w-001zwv-VY; Thu, 09 Feb 2023 14:35:06 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQ80t-001zuF-G3
	for linux-phy@lists.infradead.org; Thu, 09 Feb 2023 14:35:05 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4PCKBx3gntz1S5HL
	for <linux-phy@lists.infradead.org>; Thu,  9 Feb 2023 09:34:49 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:content-type:in-reply-to:from
	:references:to:content-language:subject:user-agent:mime-version
	:date:message-id; s=dkim; t=1675953288; x=1676817289; bh=OtwHaQd
	43ev0CTnwqIm/FUCsnnqbo5VRlxBW82fmyng=; b=H45rGLKnOkvzxImDk3fnZ7B
	PaQmSau8WRULXMxDKa2GyRi0GarWzEdFJm6F234o6B1a1pSKi/NGa8vap4goDoQG
	RoLr4F4qpmeWfor/YEdkU8RqEdgt/rh5I0FnuYt1af0u0bp4/WRXvdI3/qkF+bQT
	RGIrEs/k5zE2wbVid1TkcQFJ0aPmuuWo+K0J03jhijsN5U0UC5AM79z3PC019cN0
	FReRT4iwjQyZax9lEdnIZggVjpt42L1vum6bewMifqlXBdUgm9ByVRFuRIXiLVgd
	QyI+LReM82T+ip68VXqcbtDFig+3Nk66rfLhHi3VSIcDOEwS3ZIQnjJ98UVyvAg=
	=
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id kmM-3n9Ur5Lm for <linux-phy@lists.infradead.org>;
	Thu,  9 Feb 2023 09:34:48 -0500 (EST)
Received: from [192.168.4.25] (unknown [190.196.95.28])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4PCKBY4Xnbz1S5Gh;
	Thu,  9 Feb 2023 09:34:21 -0500 (EST)
Message-ID: <bb6f8a51-cec8-02cc-8ac1-3cd714a2e59a@mint.lgbt>
Date: Thu, 9 Feb 2023 11:34:17 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v6 3/6] phy: qcom-qmp: Add SM6125 UFS PHY support
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
 bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com,
 gpiccoli@igalia.com, ~postmarketos/upstreaming@lists.sr.ht,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
 phone-devel@vger.kernel.org, martin.botka@somainline.org,
 marijn.suijten@somainline.org
References: <20230108195336.388349-1-they@mint.lgbt>
 <20230108195336.388349-4-they@mint.lgbt>
 <CAA8EJpp-RwPOv61MtoXYb3Tuy5LDWWBCvYSrGUOvg8vWhid_tw@mail.gmail.com>
From: Lux Aliaga <they@mint.lgbt>
In-Reply-To: <CAA8EJpp-RwPOv61MtoXYb3Tuy5LDWWBCvYSrGUOvg8vWhid_tw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230209_063503_726256_A1A27FFC 
X-CRM114-Status: GOOD (  17.79  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 13/01/2023 16:31, Dmitry Baryshkov wrote:

> On Sun, 8 Jan 2023 at 21:54, Lux Aliaga <they@mint.lgbt> wrote:
>> The SM6125 UFS PHY is compatible with the one from SM6115. Add a
>> compatible for it and modify the config from SM6115 to make them
>> compatible with the SC8280XP binding
>>
>> Signed-off-by: Lux Aliaga <they@mint.lgbt>
>> Reviewed-by: Martin Botka <martin.botka@somainline.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> index 318eea35b972..f33c84578940 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> @@ -693,6 +693,8 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
>>   static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
>>          .lanes                  = 1,
>>
>> +       .offsets                = &qmp_ufs_offsets_v5,
> Please don't randomly reuse generation-specific structures. This
> structure is clearly related to v5, while the PHY is from the v2
> generation.

I'm a bit confused here. When referencing back to downstream the driver 
used has the suffix "v3-660". Should I use that suffix to name these 
offsets? Because I'm not too sure if this is from the v2 generation due 
to how it's named there.

>> +
>>          .serdes_tbl             = sm6115_ufsphy_serdes_tbl,
>>          .serdes_tbl_num         = ARRAY_SIZE(sm6115_ufsphy_serdes_tbl),
>>          .tx_tbl                 = sm6115_ufsphy_tx_tbl,
>> @@ -1172,6 +1174,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
>>          }, {
>>                  .compatible = "qcom,sm6115-qmp-ufs-phy",
>>                  .data = &sm6115_ufsphy_cfg,
>> +       }, {
>> +               .compatible = "qcom,sm6125-qmp-ufs-phy",
>> +               .data = &sm6115_ufsphy_cfg,
>>          }, {
>>                  .compatible = "qcom,sm6350-qmp-ufs-phy",
>>                  .data = &sdm845_ufsphy_cfg,
>> --
>> 2.39.0
>>
>
-- 
Lux Aliaga
https://nixgoat.me/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
