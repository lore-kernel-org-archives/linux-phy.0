Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C273C02181
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jan 2025 09:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zouUyinEzE5N0GaboDrUDide9R8NxeBjP+cTWK/WAFs=; b=emfvA8zcP1dEFe
	VkPoJOh6R8PnJzjHuUQ2V6Z0TXLvtWagnrMQs+kPLbAVAzUfWv46ti9HNt/vX2IBncW4abSIQ8c/k
	g8ZmTFFyhsc/CvScvz9TfeoqCoki9Fp9gAfkfPwYI85WS3G3Rysiw5dl6T7fzZmQcsch/4rbxDk33
	a5wFDVUuO/dcxKjd+yfFrApLwSSwJNQb9124eRLkENZIU72igBM1k3XisQSL8isSE8HuIxJwJSVaD
	2CTbTdtP5cwNhinCN6hJW3O1NkQccatCWHOvILDFfOZHXWIqMs14HnRbATf1OutlH0liTYjQ7Pf37
	s/vP/Sx4gYgCEkRQCL7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taXGb-00000009osw-3FgD;
	Wed, 22 Jan 2025 09:43:21 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taXGZ-00000009osc-1L6X
	for linux-phy@lists.infradead.org;
	Wed, 22 Jan 2025 09:43:20 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-53e3778bffdso6976289e87.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Jan 2025 01:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737538997; x=1738143797; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=f3S/0JLlz7LzJBPei7H8kq5dNzr9XPGVy0+GvfwBxRY=;
        b=hMXsoGHpTBSF7AVFiLAyurD8/VULRd/7dI8E0842XxMvx+ATfSqCJqNKTzfsRscs2b
         95rYAi7Cq2k5PzHoHAXXOG1Zp3AVjymnXdtENL3JTBSff0ygc6ZEJD5VEC+5h7HIdiHx
         DzHIyfYWBjyRaKJxzkE3csQH7xa9k5fU3jtCOnKL6Gbiwxmlyao5vVN+tt53J5BDVwn/
         4pY2+Ksb1TD2u2TywKZaM5CIYfoCyrbso/9QFDRomTHb9F7DSiuYDeOObkL8Bx8nUpVJ
         7Lcp0tnf29U17ML5/cLS9aR1VeNXI65ENW25JI5FzzMpZyzkJbC90/O0r/Qj5wEcEtA5
         5+UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737538997; x=1738143797;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f3S/0JLlz7LzJBPei7H8kq5dNzr9XPGVy0+GvfwBxRY=;
        b=tYRlhnAMhhwrawF7alfTzW0RMcFQChbBPJVhDNWc/NEBUxBc+bnRwcp07dIiTKdLU1
         I4VUB/s697cv9hlURwi7hA1RX1XaPfIRaclPDFZcQ//wmfClcoJNJOOsaosZMNNsRMOq
         Gw7mVhTOILUlx5zmzz6AE6RfrkDa8h8OkdlLRP6zO6gWCsvpEcM5P2mCa9XzRuxWLJD3
         iYhAKNYsuJ7EZWZiGI8jY4ZhnSoR4/MZTXSIeLUujpNI6Vmkod0lvKVvtypJGQQQuWVb
         9EiUs6UfQgG81deIPgrg3yY7hEN3y0A+XoXPcax/oXKTBfdpwGZ239be7KA1SLuVpwsU
         nR9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV56LiUUzG1keP36XAN7T7db39IVTbCN2vnHFtkqmcKOkzftW6a0pEXMj8MZjtIPZUMrKh1SGowv5I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsvByZNxo/rl/nPH0moij0kJMc3T6oOfq4s4UBW5qX1wg3VqFz
	0Re/7yZsBPrG382ufy78VeWBsA+RuiLjmBD5LkQmHUZgGldzD5mIcLzz2AHhlqo=
X-Gm-Gg: ASbGncs4jKTNPgTnMs6MVtO+oOtLPce9W3dW5GSIxpW8Ja6pv7Z/LYmj8Q5uvunzoZa
	4DWN+q9M6NV7ejTaXSwmaf6xdv1sK82UFM8dJJfhMq1Z19cUKmsuEGWTyN53a6+hSmX4GnWg17/
	Q8CidBEVBLuqHZsLKoxv8lrfLKj7CnQ8mQ7RQfjH8zZqSkH54Y9DPlTusaGZFAB0G9+CNS2rVL5
	vyOgevdLdzpsa8hSntExh5b3TD6P/sy6NLKuoYvHxEXIUvu/YHYkZh2WvwUP8++wBVVuKb7tb78
	5eyGPzO5mBxY5wBMfWZ0fcIep0ApobFdWiizUqBK/W8qMY0reg==
X-Google-Smtp-Source: AGHT+IHoCvY96azOotZwt3BJv8CvaWuf4DBvCn90+oWEEf3LcY7uHtLGbTyHE6SGcx9X9pIuFFB6YA==
X-Received: by 2002:a05:6512:ea7:b0:540:5b5c:c18d with SMTP id 2adb3069b0e04-5439c22a94dmr6016316e87.7.1737538997130;
        Wed, 22 Jan 2025 01:43:17 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af734e5sm2150125e87.191.2025.01.22.01.43.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 01:43:15 -0800 (PST)
Date: Wed, 22 Jan 2025 11:43:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de, 
	abel.vesa@linaro.org, quic_qianyu@quicinc.com, neil.armstrong@linaro.org, 
	manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com, konrad.dybcio@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Message-ID: <ya27ma6iah7ts6sj35payj6ek4z7m6y5v4pnxd6wtqrp3cbyta@ypvrzwa4bnfv>
References: <20250121094140.4006801-1-quic_wenbyao@quicinc.com>
 <20250121094140.4006801-3-quic_wenbyao@quicinc.com>
 <CAA8EJppXQpDrdXzJsTE7HWs=POt7yFAw0JVZFabN6Ks3fhZiWQ@mail.gmail.com>
 <a2cc5a5a-6cbd-7564-a8df-8af2a652de2f@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2cc5a5a-6cbd-7564-a8df-8af2a652de2f@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_014319_361999_9955F00B 
X-CRM114-Status: GOOD (  28.87  )
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

On Wed, Jan 22, 2025 at 03:17:39PM +0800, Wenbin Yao (Consultant) wrote:
> On 1/21/2025 6:36 PM, Dmitry Baryshkov wrote:
> > On Tue, 21 Jan 2025 at 11:43, Wenbin Yao <quic_wenbyao@quicinc.com> wrote:
> > > From: Qiang Yu <quic_qianyu@quicinc.com>
> > > 
> > > Currently, BCR reset and PHY register setting are mandatory for every port
> > > before link training. However, some QCOM PCIe PHYs support no_csr reset.
> > > Different than BCR reset that is used to reset entire PHY including
> > > hardware and register, once no_csr reset is toggled, only PHY hardware will
> > > be reset but PHY registers will be retained,
> > I'm sorry, I can't parse this.
> The difference between no_csr reset and bcr reset is that no_csr reset
> doesn't reset the phy registers. If a phy is enabled in UEFI, its registers
> are programed. After Linux boot up, the registers will not be reset but
> keep the value programmed by UEFI if we only do no_csr reset, so we can
> skip phy setting.

Please fix capitalization of the abbreviations (PHY, BCR) and add
similar text to the commit message.

> > 
> > > which means PHY setting can
> > > be skipped during PHY init if PCIe link was enabled in booltloader and only
> > > no_csr is toggled after that.
> > > 
> > > Hence, determine whether the PHY has been enabled in bootloader by
> > > verifying QPHY_START_CTRL register. If it is programmed and no_csr reset is
> > > present, skip BCR reset and PHY register setting, so that PCIe link can be
> > > established with no_csr reset only.
> > This doesn't tell us why we want to do so. The general rule is not to
> > depend on the bootloaders at all. The reason is pretty simple: it is
> > hard to update bootloaders, while it is relatively easy to update the
> > kernel. If the hardware team issues any kind of changes to the
> > programming tables, the kernel will get them earlier than the
> > bootloader.
> With this change, we don't need to upstream phy setting for all phys
> support no_csr reset, this will save a great deal of efforts and simplify
> the phy driver. Our goal is to remove proprietary PCIe firmware operations
> from kernel. PHY is just the start and will be followed by controller,
> clocks, regulators, etc. If program table need to be changed, the place to
> do that will be UEFI.

Well, that sounds like a very bad idea. Please don't do that. Linux
kernel drivers should not depend on the UEFI or a bootloader. Unless
there is a good reason for that, Linux should continue to be able to
reset and program the PCIe PHY (as well as all other hw blocks).

> > 
> > > Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> > > Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 91 +++++++++++++++---------
> > >   1 file changed, 58 insertions(+), 33 deletions(-)
> > > 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
