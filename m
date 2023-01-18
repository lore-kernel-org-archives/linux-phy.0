Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67A08C46467
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 16:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+9097VPITzl3Q2gggMzyBUTfQtJ5hCKzE4rAi4dGQw=; b=K7lq5uXWrzYCKY
	G/hs9wwv7uACnWX8RQcUvT6WSiQKl1m00bigq1L5gN/vCDTVJgU9UdFIQZ7BosfDV10UJuGLqE8BJ
	YSoxVo1bo0wvQDhc2CHW1qs0+7lYrQzEN1VFhIAuATZIBnIg88eMoRCGHCC/LaEipZYcDAIuCRE49
	2jdFlG3yvzLr9XzrJJDsXG824hZCMdLr1cejvdanow5OVsXCinbzqAco8AUalaQHUaAijacP7KXY8
	7yuAq3SCux6vYcM3FW3Q3mqJVhkhm36Iei0XWapkgO2a8CgP+xwEc9N7PY1oj7eulCM1VxojWn+AK
	ql628mYQxT1PYqLd9JkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBj1-001vBR-Q8; Wed, 18 Jan 2023 16:55:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBiy-001v9T-Rn
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 16:55:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 391F061910;
	Wed, 18 Jan 2023 16:55:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D86B7C433D2;
	Wed, 18 Jan 2023 16:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674060943;
	bh=KXVguWBBzZqFsfQ1lc00wLiy/2dhJ2rfbOtKjRQ+7Fc=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=I2i8rJpVWQewx83DF+4qKd3/0jlZUbp82IlICMCEhkUAxdW5Z/4zcU5F4tyIpNcdQ
	 WeZusJn5IK47rPyB7QjRElaoM1qd8obxUgoCpwQkXIfMrrpkITyQaRRFjOgdIKc6KD
	 8ZMBPfEeyteKjyvcFDzQgpEMn6yJ2k1UTFooe73GhPrgiUrVrJjM0VC2Kt+wt8VHJJ
	 GYJuqRO0YhlCimtYWviRn4iYqk4G4RuODGkhmcDON1FYe93ikRFWZBtd8tV1KvFRJX
	 VVVfEsdpLTETjDb8KwMuVNd+W2kx2bARCVbvoPrvkT2z+SiGGO9cB5dVsQN50w+aH4
	 jJlDu64EYJlEg==
Date: Wed, 18 Jan 2023 22:25:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marijn Suijten <marijn.suijten@somainline.org>,
	phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Martin Botka <martin.botka@somainline.org>,
	Jami Kettunen <jami.kettunen@somainline.org>,
	Michael Srba <Michael.Srba@seznam.cz>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Revert "phy: qualcomm: usb28nm: Add MDM9607 init
 sequence"
Message-ID: <Y8gka33KTscXK3HK@matsya>
References: <20221214223733.648167-1-marijn.suijten@somainline.org>
 <Y8GY51Cfkj7o1MJs@matsya>
 <20230116203549.5jzd2olxua662n6w@SoMainline.org>
 <Y8YzzCEqGi3m9fWM@matsya>
 <20230117091912.pzogxqvgf6kivi74@SoMainline.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230117091912.pzogxqvgf6kivi74@SoMainline.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_085544_955966_A4CD18EF 
X-CRM114-Status: GOOD (  11.10  )
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

On 17-01-23, 10:19, Marijn Suijten wrote:
> On 2023-01-17 11:06:12, Vinod Koul wrote:
> <snip>
> > > Thanks, it wasn't clear to me whether to suffix the title when already
> > > included in the Revert: "phy: qualcomm: ..." title :)
> > 
> > A revert patch is a patch as well so the patch rules apply there as well,
> > so should say "subsystem tag: other tags: Revert foo..."
> 
> Ack, but then /keep/ "subsystem tag: other tags:" /within/ the Revert
> string, so "phy: qualcomm: Revert "phy: qualcomm: ...""?

Ideally yes!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
