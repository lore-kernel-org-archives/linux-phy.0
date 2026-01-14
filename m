Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60C96D31A26
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 08:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Klzp4w8/aDSy8vapC1In2bqiGd+4zcp2HOwequsvox4=; b=iGcVtsLmM9NX8i
	BWsrd/+fcNGqNTPYbwhzqk7pWrI8MxFJ95zsYcUf4J9+VotzLtrkSjARBY06/c7sCULU5gniSZxQT
	rJceag70+40eZtNXjDCOylVg1gKiuKK3szmgDYqp6f81QmLiovFXhqK9M8INIUUJBSWu5t89aYXaF
	ijbe2CIH05TR5tGzLKVbqnkGDP/4fwFPQu8FJgL3rvV0GiFNCVOy8B4C7BKHS+79b45Vs32f8o4LX
	k/oxkfKINTVf0CPCiDAzW55Lb0Z+gpTtqMMNCH5aEvuG8Jzl+DvDDVkCOwXdo27HIvghZfkn1EEq+
	ZBva3Q/FqOGFTwMZOrZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwb8-00000008PXM-0dPT;
	Wed, 14 Jan 2026 08:51:26 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwb5-00000008PWT-3QNz
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 08:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768380683; x=1799916683;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=dgAZttYLRaCe9m5TzCKJ6+TFt2wSCjRKjFsbXPtQkvI=;
  b=mrUcMEUuxoEEpb4rYcTSFJNSveqlA4iiKUeTdJJFlpkQ82U5Ig5y+jRx
   hrXxueBW13RS8iW+eb4p1ukFtGSBJbJB5zLdz3x+e/ADnHnW64GK4fomo
   CIP+1YxnpAuYWvhJWHlqNOR4ULz15Fba5kTI//49O7TxdU1Qsn1li3iTT
   8dsg7louQ9pB9fJOLwtLlYJNzrLmF5zMhOdlm9+X9ZHGhJVhB+NtWcfVN
   74wpuDRdW+XrSlOqHDlL0az5zAcoTpeCvc5IpkmoXqK7uCuU2CAmfgHrN
   kbPfjMfHEY4RmOIWpJHTctijHCtlWxWwMqAMVW/S1Oq5hqP1VOB8KO0C9
   g==;
X-CSE-ConnectionGUID: OOlCRhxbT/yZPkLzQIZe0Q==
X-CSE-MsgGUID: Dq/fAvEcQTOkNz3XhZf4AA==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="95150905"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="95150905"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 00:51:23 -0800
X-CSE-ConnectionGUID: w5KBXLSkT5GwlKETmfz/1g==
X-CSE-MsgGUID: 20YHxAaLTi6mkDSnYbmoqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="209465922"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 00:51:17 -0800
Date: Wed, 14 Jan 2026 10:51:15 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
	srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
	sre@kernel.org, sboyd@kernel.org, krzk@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
	melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
	ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
	luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com,
	mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com,
	Jonathan Cameron <jonathan.cameron@huawei.com>
Subject: Re: [PATCH v7 04/10] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
Message-ID: <aWdZAyqQQ4KwCJx-@smile.fi.intel.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-5-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260114083957.9945-5-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_005123_896088_33632A63 
X-CRM114-Status: GOOD (  20.52  )
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

On Wed, Jan 14, 2026 at 09:39:51AM +0100, AngeloGioacchino Del Regno wrote:
> Some devices connected over the SPMI bus may be big, in the sense
> that those may be a complex of devices managed by a single chip
> over the SPMI bus, reachable through a single SID.
> 
> Add new functions aimed at managing sub-devices of a SPMI device
> spmi_subdevice_alloc_and_add() and a spmi_subdevice_put_and_remove()
> for adding a new subdevice and removing it respectively, and also
> add their devm_* variants.
> 
> The need for such functions comes from the existence of	those
> complex Power Management ICs (PMICs), which feature one or many
> sub-devices, in some cases with these being even addressable on
> the chip in form of SPMI register ranges.
> 
> Examples of those devices can be found in both Qualcomm platforms
> with their PMICs having PON, RTC, SDAM, GPIO controller, and other
> sub-devices, and in newer MediaTek platforms showing similar HW
> features and a similar layout with those also having many subdevs.
> 
> Also, instead of generally exporting symbols, export them with a
> new "SPMI" namespace: all users will have to import this namespace
> to make use of the newly introduced exports.

...

> +static void devm_spmi_subdevice_remove(void *res)

For better readability we usually call the variable with a meaningful name, and
sub_sdev here seems the best.

> +{
> +	spmi_subdevice_remove(res);
> +}

...

> + * Pointer to newly allocated SPMI sub-device for success or negative ERR_PTR.

This is "negative ERR_PTR" nonsense. Either "negative errno" or "error pointer".
Or something alike.

> +struct spmi_subdevice *spmi_subdevice_alloc_and_add(struct spmi_device *sparent)
> +{
> +	struct spmi_subdevice *sub_sdev;
> +	struct spmi_device *sdev;
> +	int ret;
> +
> +	sub_sdev = kzalloc(sizeof(*sub_sdev), GFP_KERNEL);
> +	if (!sub_sdev)
> +		return ERR_PTR(-ENOMEM);
> +
> +	ret = ida_alloc(&spmi_subdevice_ida, GFP_KERNEL);
> +	if (ret < 0) {
> +		kfree(sub_sdev);
> +		return ERR_PTR(ret);
> +	}
> +
> +	sdev = &sub_sdev->sdev;
> +	sdev->ctrl = sparent->ctrl;
> +	device_initialize(&sdev->dev);
> +	sdev->dev.parent = &sparent->dev;
> +	sdev->dev.bus = &spmi_bus_type;
> +	sdev->dev.type = &spmi_subdev_type;

> +	sub_sdev->devid = ret;

Too far, may be prone to mistakes in the future. The rewritten one would look
like

	sub_sdev = kzalloc(sizeof(*sub_sdev), GFP_KERNEL);
	if (!sub_sdev)
		return ERR_PTR(-ENOMEM);

	sdev = &sub_sdev->sdev;
	sdev->ctrl = sparent->ctrl;

	ret = ida_alloc(&spmi_subdevice_ida, GFP_KERNEL);
	if (ret < 0) {
		kfree(sub_sdev);
		return ERR_PTR(ret);
	}
	sub_sdev->devid = ret;

	device_initialize(&sdev->dev);
	sdev->dev.parent = &sparent->dev;
	sdev->dev.bus = &spmi_bus_type;
	sdev->dev.type = &spmi_subdev_type;


> +	sdev->usid = sparent->usid;
> +
> +	ret = dev_set_name(&sdev->dev, "%d-%02x.%d.auto",
> +			   sdev->ctrl->nr, sdev->usid, sub_sdev->devid);
> +	if (ret)
> +		goto err_put_dev;
> +
> +	ret = device_add(&sdev->dev);
> +	if (ret) {
> +		dev_err(&sdev->dev, "Can't add device, status %pe\n", ERR_PTR(ret));
> +		goto err_put_dev;
> +	}
> +
> +	return sub_sdev;
> +
> +err_put_dev:
> +	put_device(&sdev->dev);
> +	return ERR_PTR(ret);
> +}

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
