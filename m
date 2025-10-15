Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44DE1CCD18E
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 14:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKTY/Aknhr8SJCEWj9V5Fuu84/inaNpLOFOoY6mvGOY=; b=dkMBLGxKrhUO9F
	YLxzYDa+rLdKVTIH+TZKRlcxKOaY161awCcoULp08HrMASE8WTI20PSGNzg23k9g6BqsHNQB7dNM5
	+2ztpgIvU6FGD6TRJE3gD2c5EgKXqSPi+OYo1awzUmzfU2Kk5KknIePzWbmeKsPUIIlPGdQxf6z1C
	3dG5k3Aj6XqSSpJJ5m8362330lHP9EArqLDXow+blK/q0J3e5pMbu+kn66ZOryB4OOh6B5medah0+
	APGn4k9Fl9rcvw0vebbXrOzSV5zGJ4ORXuOcA6+AJBPUxMpVU6D4maS4BzJ/HUcZTL10OLf8FZJLG
	5w67zp6I66uw3+6AroWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v92jK-00000001wt9-1p3k;
	Wed, 15 Oct 2025 14:43:54 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v92jH-00000001ws8-3jV5
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 14:43:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8744B40510;
	Wed, 15 Oct 2025 14:43:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33AFDC4CEF8;
	Wed, 15 Oct 2025 14:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760539431;
	bh=BdVewfzADni3rA+uLXMhw0FIoVYxSlv8WO8HdhDGEeg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RnSAVYbX0pa/TbdwnqgAHLNi46jSc10fCqckm8meRRNlXCmzpes/MSgltOMJe09Ug
	 JxdyInJGKhLHxSlIgFJYP5d1DMa/AN+TmOb6ZU2mngBuBTa4kiL0a7IlbiS/i8S+En
	 /g4iXr3ZZjsFXgBInBqjDkI8vQ+S34EDoT113jIB013olFZ4zSjfvHAcPKJhj9WFs4
	 m4yFWLccda0qiXQeUmNJq6scITEXvAsc57cu+xGApgTtwsq6T+ZXd60XHE0JrriWE+
	 DDvL41D7J1pPoPbzucyHLUzWqhosGqSBeUrK2nvYQ0B3z5PDNtoU2YzTocZjSKawIk
	 hvNZK+1DARCAA==
Date: Wed, 15 Oct 2025 09:43:49 -0500
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Ritesh Kumar <quic_riteshk@quicinc.com>, robin.clark@oss.qualcomm.com,
	lumag@kernel.org, abhinav.kumar@linux.dev,
	jessica.zhang@oss.qualcomm.com, sean@poorly.run,
	marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch, krzk+dt@kernel.org, conor+dt@kernel.org,
	quic_mahap@quicinc.com, andersson@kernel.org,
	konradybcio@kernel.org, mani@kernel.org,
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
	vkoul@kernel.org, kishon@kernel.org,
	cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add edp ref clk for
 sa8775p
Message-ID: <20251015144349.GA3302193-robh@kernel.org>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <20251013104806.6599-2-quic_riteshk@quicinc.com>
 <xofvrsdi2s37qefp2fr6av67c5nokvlw3jm6w3nznphm3x223f@yyatwo5cur6u>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <xofvrsdi2s37qefp2fr6av67c5nokvlw3jm6w3nznphm3x223f@yyatwo5cur6u>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_074351_965259_C85B3F7E 
X-CRM114-Status: UNSURE (   8.91  )
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

On Mon, Oct 13, 2025 at 03:37:47PM +0300, Dmitry Baryshkov wrote:
> On Mon, Oct 13, 2025 at 04:18:04PM +0530, Ritesh Kumar wrote:
> > Add edp reference clock for sa8775p edp phy.
> 
> eDP, PHY.
> 
> I'd probably ask to squash both DT binding patches together, but this
> might cause cross-subsystem merge issues. I'll leave this to DT
> maintainers discretion, whether to require a non-warning-adding patch or
> two patches with warnings in the middle of the series.

One patch.

Rob


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
