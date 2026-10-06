Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D45ECA5FFC
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 20:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=3EqtjdSgqOOjlm716UYwZlz/P8iQkqhfPXrhI1W/1cs=; b=MNTJHCxA10Hp+y
	B0uhG7U73J7ZOUl4Vy87IaKgrAdkmZpptw/oElpPm0ZBcp8pD0YIpADINjkepL+0n9IUSRECkytvO
	lAwE8wWJN8MDB0dElYN9vQ2QmHuNzmadM14UU2l9DnUnyGrUURz7n8RxIJpjrBuY9yE01q/WHsaJs
	ZbffedfcYMBZlVuvAPXe+d7hW+XnMlLrqktmu4hnBGLed9SEWBBO9dUNZvn1j5HdXFJN0GRIawYTw
	v4BlqH1KOmGWBvLobs0irN+CJwrFR67ivBpk5RhMkb8C2xxiXpTGRpKylvNgFyWk0ZKt0cwDGjX3t
	5NRX7t6B8pKdKTQvOK2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEC6J-00000001NhJ-1sfv;
	Tue, 06 Oct 2026 20:49:27 +0000
Received: from mail-wr2-x0e.google.com ([2a00:1450:4864:30::e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEC6G-00000001Ngv-3Fj2
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 20:49:25 +0000
Received: by mail-wr2-x0e.google.com with SMTP id ffacd0b85a97d-48afe625404so397756f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 13:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791319762; x=1791924562; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jIHAb9GAkueefUIdjR3I4J5afRauN6gZ3S+I0imvdZg=;
        b=GPgmS3ksHP/ZajvO6j8eZJcTC7yD1ds6fryaYb4aiwylVE0IX+0qA+ckSP63VRB/wK
         3whVHd0cnO0r5vpXjc5YErv1NNr2j+MXOEIDGVpYaajVP14zMMFP9+qpivViG+NtUzbN
         zkiyhQDL5z84kjtVzNxv6dwDMR3TjrI2IaMEXDkL6bhD8hyq4bqDYKB1zJ2JiuTxg+P/
         tEsQSy9ACtNquyZ8ToFatp+h34DpePTuFhj0fRRIjOsAOsO/zk+Bcrkcnaf3rS5heR6x
         TXwjJSBqM17sVYHLaW/pnK0jO54OdQ4YVA/MSOzU/9qol8pW/fRTeco+jFeI94ad9bpj
         2lgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791319762; x=1791924562;
        h=in-reply-to:content-disposition:content-type:mime-version
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=jIHAb9GAkueefUIdjR3I4J5afRauN6gZ3S+I0imvdZg=;
        b=Wn+TJsd+KRjStlfpnW44NX9VzHeEHfcj1/Qd3DOxK894orKJ2jfom4gsxiDoGIuplr
         vQMvwpoFGg+eKYPhW5GLrMaacnd5djc5wQvFjwnMFfcENAi7Qegkbp3/KvJzpFcenYuT
         EXPfVQcMWsRU2+MeiLA9Cpx+5iV3xijmXrRPbh7QO5+wu3FRIn0PyGju6YDRL0P4QL8T
         cIxMcD0VU3vvWhanYi8IJGdNW1JM7CsnK+V4lbpN7nDVZIWa1o4K7DzOqWCYQ1t/RG99
         wzSgMLmCHMFWi/RMQEURr0cmc9v5P0GlFKqZwYVwlVP5XvqjS4KL2enA2YafOyLBJEwG
         5WBg==
X-Forwarded-Encrypted: i=1; AKwUvBwwfuCBQYsfLYIwO49RY/DxY2FHEOOGpXcRhBuMijoSotBTXnHsOqbNmRHHv6JssorpcdIkVNkKrKI=@lists.infradead.org
X-Gm-Message-State: AFuF++lYP4oTTOcbJTgk2YcK+Yii+HLtYF+IznnCelFZugWfMCzhd8Q4
	tcdHRLJDsC2tvHL+QU81nGnfZt6faA6Aujbs7MC2xnv0+p0wQuoageiYUuZRVA==
X-Gm-Gg: AYBFou065fs0DzU9QbFrn8zB5u/TMlFwapoCQQFYuz39Wj3VZR1jfyfhJV0tzCnccud
	AlKGxMF4aJgBUHU+D0hXZqTiEu96HAA3e/6gHMrUXKceVZPEE5F6UApx90IibHMvA9zTKP4EQad
	lob//W//wjsPwGTAko4hJHuD2XlwX3vXbvdlkFEAaT5dmATzQ/Vw7oopc0S6y/+qt8yWF9lk1WG
	PG4VDQSwY/UtkntOqVdRk9ev0zDWnwkFsCMg4dZR7AWUljNQDtmrxPoJBpGdU6lzjgqelPm3Mqy
	sblVf4HpeAUyLZIRteu/d46x3WKizuctzijwsSeeZmnWEiARq0J/tOWWDE8NJlpkM7gxStZOycA
	6Q2YMG7vQj9N1WRVx+JNBiHpBl3iEGg6ApoKz76c9h2g9b7JLnruwkhkjWye/sVdzLepjB4jS1A
	7pZ82oOECpabLusLRotQQ9knha6qc1KmCApdl4lLOqkKq3SiGkD2td3JQGElRCUPAl7EmSY19s
X-Received: by 2002:a05:600c:820a:b0:4a0:1ca8:70e2 with SMTP id 5b1f17b1804b1-4a18031129bmr1090175e9.1.1791319762113;
        Tue, 06 Oct 2026 13:49:22 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d006:ef01:92f9:f192:2805:c29a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a17a0fc2e4sm94359625e9.3.2026.10.06.13.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 13:49:20 -0700 (PDT)
Date: Tue, 6 Oct 2026 23:49:18 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rhys Tumelty <rhys@tumelty.co.uk>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 3/5] phy: core: Add phy bulk data helper functions
Message-ID: <20261005163245.x5x3gv2habdk2xe2@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <asOMP3uJJmdpfvtt@inochi.infowork>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_134924_855906_91153DB9 
X-CRM114-Status: GOOD (  16.73  )
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

On Mon, Oct 05, 2026 at 07:41:52PM +0800, Inochi Amaoto wrote:
> On Mon, Oct 05, 2026 at 12:12:51PM +0200, Vinod Koul wrote:
> > On 29-09-26, 16:52, Inochi Amaoto wrote:
> > > Add several helper functions that allow drivers to get several phy
> > > consumers in one operation. If any of the phy cannot be acquired then
> > > any phys that were got will be put before returning to the caller.
> > 
> > Do we have many such examples? Phy is not a many resource like
> > clock/regulators... Do we really need this. How many in kernel users
> > will benefit from this API?
> > 
> 
> 
> I guess the following driver may benefit from bulk api. Most of them
> are PCIe drivers....
> 
> drivers/ata/ahci_imx.c
> drivers/pci/controller/cadence/pcie-cadence.c
> drivers/pci/controller/dwc/pci-dra7xx.c
> drivers/pci/controller/dwc/pcie-tegra194.c
> drivers/pci/controller/pcie-rockchip.c
> drivers/pci/controller/dwc/pcie-qcom.c
> 
> Note: I mean the bulk api, not just the things I added. I guess many
> may want devm_phy_bulk_get() or devm_of_phy_bulk_get() instead of
> devm_phy_bulk_get_all().
> 
> Regards,
> Inochi

Why didn't you try to convert some of them, to make the case for your
patch set stronger?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
