Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A7CDCA1012
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 19:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=/VL62HGJk0WPKsrq75mk7s4Wbrz5lRMNMwh4Wkj3gL0=; b=ScWR7xTHlMBDok
	kwtLZkqeP0yFNmaPqzxloWKKPlhPXtjmFFmtPyG6uQvmVmBnoRVuGEXJOH2eMjDNSTNAMULQx6bZ+
	lanez9/HqehSY7g/Fw/fwExLAdHYnJFbyVJ4j3cMgXv/lt5zhm0lP8aEkGtdGhAAPKCfEnd85yeE5
	EWlKiS+HNrxlpQbUwjlMfVhe+zc41Ih0f27U27UNcGj46zHVaD0Iup8PYoWSv57NnuKSdMe1fVbzL
	2P3jC213g8A1CN73wd4pqm7xL/45XFvWSe89xM1uGhNXTfpVTYE8NwmCRmAUhUsIgG1zOS8f75uLl
	fgb54Gco7hCbCrY7IQEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuG2V-0000000E5JW-45TU;
	Thu, 04 Sep 2025 19:54:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuCe5-0000000CnqZ-0GxT
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 16:17:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C507A4391F;
	Thu,  4 Sep 2025 16:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73743C4CEF0;
	Thu,  4 Sep 2025 16:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757002628;
	bh=kMEh60br9LzSzqFcFHdSCGeQFfw5Y/5AEaz/h73Frvo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=IOytbBFPIsOca+/MXV537lUnp0nEEYwr1DDK4VhyN+Io/EgWbeMGXtIv5sNacnY5J
	 TN3td5nXVAUUzDTi2IdEfuwG4Y7hrLQwvswULTSrDDmFYBqdkS+vwQyBlHfWePFrjd
	 SDAhGIPxAfpntpRU295jhVs5oZFYraA2k4HH8/eBgaoPIMTTQ+uxYlvAT+aN29gnaC
	 UlfvJBQtFCPOt45URsf001P3Xo8GMHFl/74JVqSFRfJhfhZe2TgEifmJkdAwyKx/xJ
	 XSrrdAX6Qki1J18v2QqLvFJFPyXlfWDVClSDf/ysXT1+ONY13vPQiXJTzTS+Etbnl0
	 qXPW27pz+XEAg==
Date: Thu, 4 Sep 2025 11:17:07 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v6 2/3] PCI: qcom: fix macro typo for CURSOR
Message-ID: <20250904161707.GA1265471@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250904065225.1762793-3-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_091709_124409_02702DBD 
X-CRM114-Status: UNSURE (   6.34  )
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

On Thu, Sep 04, 2025 at 02:52:24PM +0800, Ziyue Zhang wrote:
> Corrected a typo in the macro name GEN3_EQ_FMDC_MAX_PRE_CURSOR_DELTA and
> GEN3_EQ_FMDC_MAX_POST_CURSOR_DELTA to ensure consistency and avoid
> potential issues.

In subject, s/fix macro/Fix macro/ to follow precedent.

s/Corrected/Correct/ for imperative mood.

I'd stop after GEN3_EQ_FMDC_MAX_POST_CURSOR_DELTA.  Pointless to go on
and talk about consistency and issues.  It's a simple typo fix.

No need to repost for this.

> -#define GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA	GENMASK(13, 10)
> -#define GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA	GENMASK(17, 14)
> +#define GEN3_EQ_FMDC_MAX_PRE_CURSOR_DELTA	GENMASK(13, 10)
> +#define GEN3_EQ_FMDC_MAX_POST_CURSOR_DELTA	GENMASK(17, 14)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
