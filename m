Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31289EB64DB
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jun 2023 15:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4LPcQaujkt/Wk87msmW9SeR7cdFxmL4O9rE55xmu2I=; b=TM4X+Fj3pteZaO
	opu0lDwAJOx9GjUApcCtxrtb4so3n9vsn0ayQ3r3VO4zLDynrnipLCrsCXuTIhnVCDbPjUhhCkNRz
	Xarg1CCeflw+7PiGqYkNhoFwBkHErIwjOuSFmG066VmRAuMuc0w2msC7aRmdrZwMEKHZ8lvYmz36a
	nKSrYC+kYOfBiGjwyzZO/qruRBG1RP9DpUrkzixaW71H7MMC54Qh21BnPvdJoPcVK2M/PkiGDFo48
	Wzfmvqio9j3Rj6mwOtZ0K+579osPj8yOB/WmN0mzl63RQTxSXrIIN+cShm1BoSzVQOl36B8XMLaOZ
	0wONEC4hV9m26o1KpBGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBdIZ-00Bfyp-2k;
	Tue, 20 Jun 2023 15:29:39 +0000
Received: from mail-io1-f47.google.com ([209.85.166.47])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBdIS-00Bfvk-2O;
	Tue, 20 Jun 2023 15:29:33 +0000
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-77e2c42de06so151352339f.1;
        Tue, 20 Jun 2023 08:29:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687274972; x=1689866972;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V0Y4AXdrYa1tkgcQ1lVa5CHskB21PJWROqJlqjkg++Q=;
        b=ix/nao5Jf265VjXvnLcP5EDu/fpPjpvKC92fB95QBKihIlv6UtMbnRdLMIIbYf1GaQ
         jGQDoNsyENpdDrAvXNIIHzWJXOQ69/fzVk0YeLsKm21/QWolOqSDivBWhuSeoVrzanKQ
         J5GvbZOPwMjQd45ycY03iVDqVIuL7BJx6SD1mo21ALKynVwnpuPSErxLblsFE0tTzvHH
         zpRmZIYwCMzabyIaqVbdFuHFbPTg7g7+OoJXhImVVnsoReCW3eiSVMhQ/yr9T/SKbp2N
         ezRVfnBico3B8HsxfLU+HX8pjLKP4+/g4AHXhCfa1EOxwzQmrx7VX/6oApQLGf8mGJJL
         iNJQ==
X-Gm-Message-State: AC+VfDyk3K9SHXKEPjJUo9ev39JDu9Zi1BIHrH+/QBVFfFX7YXazfIaR
	78Xlw+sStDo/0O7GpVXyGg==
X-Google-Smtp-Source: ACHHUZ6gL073MhTgHznwvctgz7PH4XlTinCnhA+7jX2RzyBmntUSv1zhLIRGmqsTRuxbxCTVrW57kA==
X-Received: by 2002:a92:c14c:0:b0:342:299c:a2b7 with SMTP id b12-20020a92c14c000000b00342299ca2b7mr11147650ilh.23.1687274971825;
        Tue, 20 Jun 2023 08:29:31 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id k17-20020a92c9d1000000b003317ebbc426sm671325ilq.47.2023.06.20.08.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 08:29:31 -0700 (PDT)
Received: (nullmailer pid 3628956 invoked by uid 1000);
	Tue, 20 Jun 2023 15:29:29 -0000
Date: Tue, 20 Jun 2023 09:29:29 -0600
From: Rob Herring <robh@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, s.hauer@pengutronix.de, jun.li@nxp.com, conor+dt@kernel.org, kernel@pengutronix.de, linux-imx@nxp.com, shawnguo@kernel.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, festevam@gmail.com, robh+dt@kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 2/2] dt-bindings: phy: mxs-usb-phy: add imx8ulp and
 imx8qm compatible
Message-ID: <168727496867.3628901.18310366051743547060.robh@kernel.org>
References: <20230613083445.1129137-1-xu.yang_2@nxp.com>
 <20230613083445.1129137-2-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230613083445.1129137-2-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_082932_778751_F652CE5C 
X-CRM114-Status: GOOD (  10.90  )
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


On Tue, 13 Jun 2023 16:34:45 +0800, Xu Yang wrote:
> The imx8ulp and imx8qm are compatible with imx8dxl. This will add such
> compatible.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v2:
>  - no change
> Changes in v3:
>  - no change
> Changes in v4:
>  - no change
> ---
>  Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
