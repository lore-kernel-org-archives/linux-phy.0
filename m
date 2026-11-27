Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAAE606A33A
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 13:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=maDxKp4W;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WU1K0zBO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=U0kPXK/NBdYTnUo+wdCsLWcB1Xw+AOES2BQ4yB5CNgs=; b=maDxKp4WE0oACIUCnxO/Y1gXT7
	Ng5H5gkNIeqKCGTidvmmP3yzKkfjVc8cIDEjW6hDxggjAkSNje7VThjSN5VpR9smUi6NgJ1PTQTae
	Vx/4WfX44OrkMgKdkUyv0OT+WnYjq7OgNGBsQ5JxYXvreNAyW7zvairzOqqX/CDUqyIgRticWOa7F
	C7zHp6VRuCgEvU0T+e4WmpIPjDEnoMrAYU+qMLJ1X9ODtGdg67KK0G7s2ySH0aY9I/D9ofVIFhai2
	dg30rpY7swehKAI8FAvoWZLFn8tpvHbxT8bOrb8W/t/X3qcGZG0mZrnoXIQXA89J41XtXKq4Q1n+u
	XqYBvSng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwCE-0000000GIFu-2nih;
	Fri, 27 Nov 2026 13:41:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWwCC-0000000GIFo-3pVQ
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 13:41:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4ABFD401BF;
	Fri, 27 Nov 2026 13:41:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D5F81F00898;
	Fri, 27 Nov 2026 13:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795786860;
	bh=EAFzQn4AZO4T8Jr/IHZOyo9SxjxVpL3kZu2DnP4FhnE=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=WU1K0zBOFJTrkxe9LiCjKi/W/AujGjdENtU8d3K5XDlubRY138sKh1bNyhcAe675C
	 dzXp0STs+NwZqrHokoxLfItEQNJWE9HvSBAurAqsg2K0sWYjY1Z6OAQJRdKS/MC29e
	 UHttEfI2vQdMf3+m4O5SM6I9mb8Axxgbyznk0NweMu+5rfdSwTZ2+RnpYRMUTcq600
	 5CRNHqyxOPBTKKsetZqgpP1OvEBdHhDjFIFsftlHw8LBOFJ+/YToZ+C0DR4W5GBxBG
	 b0UgXSkVXYpBB806F6brJ+2nnlWCA3StHsXy7+Um+vd+7cvM80xMnaabyaCjE3NlwG
	 220IYznESq0Kw==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/2] phy: qcom: qmp-usb: Add PM suspend/resume
 callbacks
From: Manivannan Sadhasivam <mani@kernel.org>
To: Prashanth K <prashanth.k@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261113103111.156476-2-prashanth.k@oss.qualcomm.com>
References: <20261113103111.156476-1-prashanth.k@oss.qualcomm.com>
 <20261113103111.156476-2-prashanth.k@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 19:10:52 +0530
Message-Id: <179578685292.13164.3928712894764955778.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1097; i=mani@kernel.org;
 h=from:subject:message-id; bh=MTCJpckqKtkOgXfkUeumsV2i/Yarf0sYFkZT26i8sLM=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCYhoq1p6wtIB34/tn5x7Vg8CjzZ2s69Z+7/sq
 IIMAN6kTKiJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmIaAAKCRBVnxHm/pHO
 9enSB/4ikNp/KXToJs6w7LUGCX1XeQLNUNs5F0ITW0PxDzc6nZeuZ0KOR/R9Qw6gsuIX68qPP+3
 B7Aq+vDHgijss7xJeD40uuvWdRCSafTUqQ+dojPK7HvXzdvWQVw6gfYvdxioAg3oREWrGP2Hw32
 w9wyjUb/jPE8xHgzpFEuYsINRikCwaEqc1fdeOtanArt8BO/+QyXl+Oix64ftBFbl0oSiYJkLWv
 q8q+oV8s+sxbE4clFMLdg7oUErGCC358Q4bPji8M7Yj361aMEfTjks/T1X4bADdx9n4OQAswMHN
 /9pTmJe4DfK2+gkQ/umvcnjdlDCAtloja2jDdm64LxelqT1W
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-13 16:01 +0530, Prashanth K wrote:
> Currently when we perform system suspend, the phy clocks aren't
> turned off, this leads to power leakage. Prevent this by adding
> PM suspend/resume callbacks for the qmp-usb phy which toggles
> clocks on/off correspondingly.
> 
> Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index 6a9faa0ce3bb..dc8be977e0a8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -2129,6 +2129,7 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
>  static const struct dev_pm_ops qmp_usb_pm_ops = {
>  	SET_RUNTIME_PM_OPS(qmp_usb_runtime_suspend,
>  			   qmp_usb_runtime_resume, NULL)
> +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)

This indicates that DEFINE_RUNTIME_DEV_PM_OPS() can be used instead.

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
