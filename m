Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACF4CD4A5E4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 02:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5R9If/BkRsZLdcjDIsUrRBHxzG1AqD/VBLT980DP3pc=; b=heP5AAFDmKCXVT
	13WUJMjPtk6oCkcKOMROSHb2jo4ENR66/HRi+pN9osauFUplWKMNJBG549LDmgGGjTRShHFYnghWl
	wdEyGJnEf+mRY65h+jhryFrOBI/FpkJXTCzY6Fi1dUYt46599FEh3dXRUPfYj8EbAFbtWjYgIPoEm
	Hd+hWhJPGbFrDtcPY/tnLtvNnZRXqMDNYP/olxBpMgmmSBQ6xRgbLTq36svGdYtm+EH25f6unZb2m
	8M7G4TwcXLPXnmO1pR8KcDLKwHfAA4cqPvY8sUcc/A0+8EINMSusTMw8RiyDEaNf0Sm4ejHC4DWYx
	AXouunA8iVWTJIV1qzsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgZBJ-0000000DRZm-00Tq;
	Fri, 16 Jan 2026 02:03:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgZBG-0000000DRZS-3C1a
	for linux-phy@lists.infradead.org;
	Fri, 16 Jan 2026 02:03:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 600F943EE7;
	Fri, 16 Jan 2026 02:03:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ADA5C116D0;
	Fri, 16 Jan 2026 02:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768528997;
	bh=yRBOsXLD9J7HJ26+T9b8ZHvPW4supdfoc8WylsZQNoc=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=c0yWSDB3P7Jzomlap+u39IVR58g0E5yfQ/bonELEVAbOwPHL3/2sU2KOj6cDoTGAI
	 ll0BDnxHVVoN5vEAjFcxjGsAUhUBg7l4rnf69K6JZM5P8t8lsP9In3IkgqXV0RSMUO
	 +9psxmUBpaZPOBYlibwf8KmA/eIKwuM8uR2LpltAIANYxFuuup+akY7aKP90PGQQX7
	 P/6YBD19iYrcWq8V/AL9kmp9g0Bc/JfTlqe/fLtqNAu95EXV1ajf2tlPhg1KPo1mz0
	 9cBZgFTz/PgmetZpGsCdEKWARF2DlpnPfoXesjN20w/Cb8LKtuJCzoP2qQz15H4k21
	 74lzj7uPsNAfg==
MIME-Version: 1.0
In-Reply-To: <20260114092742.13231-2-angelogioacchino.delregno@collabora.com>
References: <20260114092742.13231-1-angelogioacchino.delregno@collabora.com> <20260114092742.13231-2-angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v8 01/10] spmi: Remove redundant dev_name() print in spmi_device_add()
From: Stephen Boyd <sboyd@kernel.org>
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, sre@kernel.org, angelogioacchino.delregno@collabora.com, krzk@kernel.org, dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com, melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com, ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org, luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com, mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, kernel@collabora.com
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, jic23@kernel.org
Date: Thu, 15 Jan 2026 20:03:15 -0600
Message-ID: <176852899514.16445.4062211943640481142@lazor>
User-Agent: alot/0.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_180318_835567_26A4AF91 
X-CRM114-Status: UNSURE (   6.39  )
X-CRM114-Notice: Please train this message.
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

Quoting AngeloGioacchino Del Regno (2026-01-14 03:27:33)
> Function spmi_device_add() uses dev_{dbg,err}() for respectively
> debug and error prints, and passes the same device pointer as both
> the dev_{dbg,err}() parameters and to a dev_name() that is part of
> the actual message.
> This means that the device name gets printed twice!
> 
> Remove the redundant dev_name() from the messages.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
