Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 592DEC6FD1D
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 14:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CPUqqf1152dNPlcGzfvqoCWUI5bqR+wXSiGc8g+IbQ=; b=y/K8mlOF+uE4S+
	PZQUzjgyzFd9enEzBhFzQBV92u9BrvTXxgzxIESLYseNFYKohCuw8kVz13Hi2ko4ie+qGOd5wIv3f
	8MIxi6R0f0bxO/NnjrSwDYva0qFuzMAhNe+kq80lfYguWT6k9n8MDp8Y56HhhORAmFQd7ARF2Sz7c
	6RSvre1f4uGm9lSuhh2PutVRkywMbw6GSd61WHUNM3KxQ5+qLjg6ZsB+1NpATP4Dl5sNuKIi6mZOy
	R1vnhdVLgkx6QWJF9gRiEYUv332sSQbALvwhQEz/tKC6sQe9UGpZtd/ri3UAzKkfYvXwrLrN5JYOL
	DgGT6yCuBa0b89t0o5wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgnXr-00BE2L-35;
	Mon, 27 Mar 2023 14:09:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgnXp-00BE1j-2B
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 14:09:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9FACF61297;
	Mon, 27 Mar 2023 14:09:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CE99C433EF;
	Mon, 27 Mar 2023 14:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679926196;
	bh=qhleqvSXG55LxvL+uEa9mQ1uZqawiIM0nEiCIToDFzE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gyz3rDhZiVPqbbQYupLmUGWcI1BIvh3RYJcqWZuuFKl3ygJh3GXR3R1M9hWXUv9qY
	 rdl/JEvArv34V2ryq0xWC7VFi2Z3tvIwOrl6AErokW4MQfmapOtZ3hQ6AM+GvSZx0z
	 G/PEzJtXUyXAZJa8Fblso8ugrxIukM4NSndWNi7gCmlzGLqTnz3BUppmnsu5GvbMvJ
	 WGA6Re0e5drIsKBQnbX5Ve737LcMqu3SjUOakQ9F402KcbNBT5mTXTPk49dBbziPOJ
	 wuqFaaOUl+6yvAjkgskdkzv/Q8MhoD1XQ5NXjOpio67D6supKhRshqwW9nMMBUEtlg
	 EjtXMFKw+HRjQ==
Date: Mon, 27 Mar 2023 07:12:59 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Georgi Djakov <djakov@kernel.org>, Mark Brown <broonie@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	Wesley Cheng <quic_wcheng@quicinc.com>, linux-usb@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-scsi@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>
Subject: Re: [PATCH v2 00/12] Introduce the SC8180x devices
Message-ID: <20230327141259.bjdtyvhilxuxts62@ripper>
References: <20230325122444.249507-1-vkoul@kernel.org>
 <6f6be544-48da-0c22-ea54-e07e35131ec9@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f6be544-48da-0c22-ea54-e07e35131ec9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_070957_768731_9D03530C 
X-CRM114-Status: GOOD (  14.06  )
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

On Mon, Mar 27, 2023 at 09:46:31AM +0200, Krzysztof Kozlowski wrote:
> On 25/03/2023 13:24, Vinod Koul wrote:
> > This introduces Qualcomm SC8180x SoC which features in Lenovo Flex 5G
> > laptop. This also adds support for Primus platform as well as Lenovo Flex 5G
> > laptop.
> > 
> > I would be great if submaintainers can ack the binding patch so that
> > everything can go thru qcom tree
> 
> I think Bjorn recently was rejecting taking bindings patches, so what
> changed?
> 

Nothing changed. In the interest of reducing the risk for merge
conflicts I still think it's best if bindings goes via respective
maintainer trees; so patch 1 is for me...

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
