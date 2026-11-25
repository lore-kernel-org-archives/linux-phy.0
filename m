Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB7860A260A
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=r4lgsRvm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=oOBb+L+p
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZgLTpdoukEpKmJkyvgbZDiQc9vN71x8w54jGG45xBv4=; b=r4lgsRvmmKAfrCkD51NyDRB6GG
	dJ0TBgih0Zj2x3osNumB2hCEBqbuJwZ2fcadyI/Vt8XtylKcgzcujrwDSdASlDTsDaBaPFXtZvYKE
	j7eUC36VLaacSD+S90W1KaIH66twDSfbuT/wqhRUs6XklIPGvPo0I0IGENOyKR1P5u/Vfen5RYSXh
	UJjxR6exsEkOxxNxcBYe6B6UZD1v2VJ6ujrN2+sPHvRgZ26jgxJ/Yt0ffp66d5jF3S4+YSd4Uk2zM
	jfzI5uPO6tU70KfXNtfOwYbs7oy8MnHJTj8nbrplU82mvEoax76rsvrHXA2D4BhTqp/0SHXhaFmGY
	Tnd87eVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWF6n-0000000AOfv-2uwj;
	Wed, 25 Nov 2026 15:40:33 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWF61-0000000AOGB-0ZG6
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 15:40:03 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4bb5f0c5348so3342925e9.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 07:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795621183; x=1796225983; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=03OK5Wux5qBQjFwf+S+X4PZ6SO+iKxNmDWiFlrnb6so=;
        b=oOBb+L+pLcyQzwIMuf8/kIQWYp32iQscasrn9iwA/GqFIZsSoHmOmXTYIWXR3i6iNS
         E5yjeMy/kY0iw0CrbvoxqkTeIkVnOPB7AJvjuvoJZxMxo6TAVyYrN9ds5XGgxgOU7M7G
         GHm2ri8l1sgFXC4xRmSzbjKHel/YpIJyDf8oJNIMIkWWFvQ3vV3y9Rmn3CUQKhUI6zNv
         f7rj68Pzx6UU5NtjGVWfhm0F/A0wM2LDwHh/KRzlguAGw0vO3UY4zOXhzucVbk3QbmO/
         WFVJIviKLNxIGLmtgJ9RvmyLk/UK2ZGlrvf/bhQMiPNIk0z4Hh/bJk+iBR1Czjr1dvBv
         lygw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795621183; x=1796225983;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=03OK5Wux5qBQjFwf+S+X4PZ6SO+iKxNmDWiFlrnb6so=;
        b=WWY7wwSRxNcYheq/9yzdCNRcgEDd9TAcI/VyHz4l+FHQGX8pXBAxwcWKswTsB8ZLds
         gl8sWWtdbOZ1pU1JSAinJHgt+u8vU+tXZliKASL91MccDRvb533hQFAKAiCKret+ZoEh
         v9C6qyh0ocS5qubr611Ry04gi/fVS9gj/m59CqWm47iF+oGYMPJ1tAMQKDJLvJBkE3vi
         oDXtB1XehurNtecOKcfv/x6hPHBdn34tNXaVq2jrUKnm3VqklfteNvxE9zGetmadF8jy
         KMqWgqMnBL2Y65IJt+ZIWpVk6NYrebaLshcWBJvOFGUE97Vu5o/kLLq5wcSaMWVrIiiK
         repg==
X-Forwarded-Encrypted: i=1; AL+hErFjxMSCE2CwoWC1d2dLznzSNNFt5YGG98lS6s8q5iUXzPRf0MFPXKj/kPMdyd/7tFU6Iis+829BYhw=@lists.infradead.org
X-Gm-Message-State: APuU4Z+dVy7yvRnK4fiBMfzXR3gv33DRCF+YpzDh+uMPpyYTBxCp7uJw
	WgTGgzLCcfruUuy3HzYrpurMOetdCDkG01imhXOXtEOq7yhaPrXExjv5
X-Gm-Gg: AZFdTZcJ4C21wwrSGXkEcm0ACMWGFXwQPyrYycmuxAcKZZiDIBgnGsabxVDkoCcsd7o
	q8qMkQ5jrrvjtWqBjKYZkFkUGTU+aXuscfZg7IP2ihwqgwqPfO+SKyemk3NuCRX31m+wpUiS86j
	qtTzYMC6tA9EF4JKfOvPwmbxzqeyUFA3vuZK1KL6/5tsn3iSiLnSvAmFGjrJepg/NbLLvhYAdNS
	zYRzttbIe68v+Ev8eGBCuHi+4weL7qe8EEx2sN2PEZmJHsYTGyhka5LtSBMgTJ86vDyfwPiZtE/
	vSyOO+Y8XcA9RqeqLACyC2kNxRSAd7eqTViojiIrvBWOqIuyeH8X5VRFZel4y8yN2xC7E9kt6wu
	cgqZuM+Vi5G2cBPsdSnkDR4Mpyk0QV/cqTKhPDUumqiCHgD3ihRJyDa6CMGB3tbPvrP9PWaMYSE
	AcdbaTlJ/Oy3NKJJdT5w1abFjPD22Pypks1J9jx5/Wij/qqGgKTqm7NWujVUsKgXVMMs713PiD3
	y2oH6H/ZpXzPNwM7vNrx2pwsR0eNgvdY90qSgC2rd28vWgqtQRW+bOlPdB8eOJn05vmstJKhHUx
	OWW3v9MGz9iIVJrAsg+Dl0+eIAU=
X-Received: by 2002:a05:600c:828e:b0:4bb:7ad9:2f22 with SMTP id 5b1f17b1804b1-4bb887853e1mr340731425e9.0.1795621183256;
        Wed, 25 Nov 2026 07:39:43 -0800 (PST)
Received: from skbuf ([2a02:2f04:d401:2601:d3cc:6bc:a861:f9da])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb884a15absm474497565e9.9.2026.11.25.07.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 07:39:41 -0800 (PST)
Date: Wed, 25 Nov 2026 17:39:38 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Damien Le Moal <dlemoal@kernel.org>, 
	Niklas Cassel <cassel@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Aksh Garg <a-garg7@ti.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rhys Tumelty <rhys@tumelty.co.uk>, 
	Manikandan K Pillai <mpillai@cadence.com>, "vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>, 
	Qiang Yu <qiang.yu@oss.qualcomm.com>, Hans Zhang <18255117159@163.com>, Yao Zi <me@ziyao.cc>, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-ide@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v5 8/8] ata: ahci_imx: Use bulk PHY APIs for calibration
 PHYs
Message-ID: <awcBID5pfFm2FadY@skbuf>
References: <20261125043639.249525-1-inochiama@gmail.com>
 <20261125043639.249525-1-inochiama@gmail.com>
 <20261125043639.249525-9-inochiama@gmail.com>
 <20261125043639.249525-9-inochiama@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261125043639.249525-9-inochiama@gmail.com>
 <20261125043639.249525-9-inochiama@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_073951_428913_55FB7BB0 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, Nov 25, 2026 at 12:36:39PM +0800, Inochi Amaoto wrote:
> The i.MX8QM SATA PHY relies on the first two HSIO lanes for shared
> impedance calibration. Store these calibration PHYs in a bulk array
> and acquire them by name with devm_phy_bulk_get().
> 
> Initialize both calibration PHYs before powering them on in lane order,
> then keep the SATA PHY initialization, mode selection and power-on
> separate. Use the bulk helpers to release the calibration PHYs after
> SATA startup and to unwind failures without repeating power-off after
> a failed bulk power-on.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
