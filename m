Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D83BCF9C71
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 08:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFJtouxhWuWB8kFFmFmB9PxLObKVjWvFf6C5PGsNZvo=; b=4VKpmfFHGFeTh0
	UbzIYTfj9JjfqxK96JZDhc/NbvHnyNRja5/UW6Cj9cXn5MI6wl/BU1SdP1x9ukcoxFgoVZ7/Y170l
	j0GXwkV+wRo/my2tK5+YIhep3PUfQw4OOBqySyH6mDItI0SYDXj+zOUDJDa7k+PykDQsnTzu2AFZ6
	FgLaf4bIQQ8aPTHJGMGWWXzTrW04PA8yDSruGWQ/YZ+cUgET/Fm6YjJlbEkRyYuC5evlKKD2zpAM1
	NEYvH5l88aZkHa8b8jTmdVqWy8m5FNUKf7Vwox20ZpemDqfrKwD6F4ClXQEh5vsPFidfiQTTUG2yP
	p7+X0D9J68aJoBL44eLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st19N-00000001drz-4By1;
	Tue, 24 Sep 2024 08:44:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st18V-00000001dg2-0x57
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 08:43:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AE3005C4973;
	Tue, 24 Sep 2024 08:43:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37D5CC4CEC4;
	Tue, 24 Sep 2024 08:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727167386;
	bh=G03an4s/BBkbiR5sfEuBnlun4tbtlIlIOPYVWkYcMPU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rA/vjWKDVg4XoXhqoSRyPjmQaRYSrI00ThmOhO6SGl2/h5PKG6/x3/P0wNZBNuzTd
	 RPf93PE9q5moiD/R2ga0mGP8Xt2FsRdWYqXsbGQIW/pNpwCNcB0qE5yFBeZBOnKU4l
	 ZwCDP8YzK2IsCMsQgKxZm6MO7/qRlC1UkxkHZ4rN4u3iSiwfVedq4WOuYc/P0pAu6I
	 A6DrFV/ZIRYh0MdV8Qo3oLJyOQiPQSl+tE6sf6LtgfXybwvl4eL6wVVQpBEPfTI5/R
	 D5V5SKA8lNmCEVKaJ8+6xOB2VeyzOGZtnjCznHcJBR/G/SfIKCgJqXmV/EYESqEZAB
	 8pQhucrdjqyxA==
Date: Tue, 24 Sep 2024 10:43:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, dmitry.baryshkov@linaro.org, 
	abel.vesa@linaro.org, robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_khsieh@quicinc.com, 
	konrad.dybcio@linaro.org, quic_parellan@quicinc.com, quic_bjorande@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	quic_riteshk@quicinc.com, quic_vproddut@quicinc.com
Subject: Re: [PATCH v3 4/5] dt-bindings: display: msm: dp-controller:
 document SA8775P compatible
Message-ID: <6v3wtdxcooi6qfolj5bfbgeru4uyawj6bsbfcnxu3lspuuhsi6@ysmb435njcul>
References: <20240923113150.24711-1-quic_mukhopad@quicinc.com>
 <20240923113150.24711-5-quic_mukhopad@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240923113150.24711-5-quic_mukhopad@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_014307_333485_B5FEF23C 
X-CRM114-Status: UNSURE (   6.93  )
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

On Mon, Sep 23, 2024 at 05:01:49PM +0530, Soutrik Mukhopadhyay wrote:
> Add compatible string for the DisplayPort controller found on the
> Qualcomm SA8775P platform.
> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
> v2: No change
> 
> v3: No change

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
