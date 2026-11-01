Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACF5606A327
	for <linux-phy@archiver.kernel.org>; Sun,  1 Nov 2026 11:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VvX7lrB9;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=DNTtMyDY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Iq1OAohCmdpJtEabCKUuqbXZ32L/z4ELVglPTO/1xFU=; b=VvX7lrB9tXKNL4gjWgTp8udWpR
	9lIpGXR0aSroB3g8nbKiOo9IhTb7SRE6gHAXlUBb2CniwDUmnptcH9vRQhD8KmHf3/i1NdrEZgYic
	rPjIZkC5MFax7Ee4D83jVHKizTtLxi1fbfst8/YHx8PHqstv18o03GGdwxyJGvUvXsbIm/IN3TY+H
	aV6aYm6kq/jeQgci3UFkp2ooiX+g/Vn6lSJ6XLKbUK9OMThcuG+JcrWXx9F/UL/UmOKCJilxKTmFH
	9dCuaXkx8QfGIlkt/6XcvBOHBXgkOUB9UAzeTnPgVxfcZbsL3SPdK7pcbjcOm4S/BsKkbOONAB7bV
	eKvMbCWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNTOI-0000000E7oo-0MER;
	Sun, 01 Nov 2026 11:06:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNTOG-0000000E7oi-2zxK
	for linux-phy@lists.infradead.org;
	Sun, 01 Nov 2026 11:06:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7AB1E60220;
	Sun,  1 Nov 2026 11:06:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41DBD1F000C1;
	Sun,  1 Nov 2026 11:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793531179;
	bh=ICIkAf3UPu4vp4g9wq9pl5fJ3rhAB5F7TqD0Cz1UXjg=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=DNTtMyDY6sgakprgJdluxjvivbsnTtKQfLxmqRjCbVA4kgZOmhZOwV67noWIzTw9k
	 XRTQbPddEJWqhsLM5zko1Agcsj12H5ke6W0KbT9Fv3sDhnCkF4k/qN09OmnrQHwlRW
	 TzvnEDNp85FaCk4ZJ52ytdc32NOIYM5B44joQWlCSWL65KQq/+ne6briCWGmsi2gkx
	 tR1zAvGLWy1QwJGBrOXbiT0RxrVKRpv3aRO91Kwxo7xFdxMbzwo+2T2nTTlN66K/2g
	 t/M4QWYsoIYwayDtpDQTmj+5rpqiHtMcdo+iP4FtTsCg/hnV+osY+zLkLkLc71JbPx
	 tCOIUQ+oUIJfg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2] phy: qcom: qmp-combo: Leave the USB PCS alone in
 DP-only mode
From: Manivannan Sadhasivam <mani@kernel.org>
To: Joonhoe Kim <26rote@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, mani@kernel.org, 
 konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com, 
 val@packett.cool, wesley.cheng@oss.qualcomm.com, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261023123512.1912-1-26rote@gmail.com>
References: <20261023123512.1912-1-26rote@gmail.com>
Date: Sun, 01 Nov 2026 16:36:13 +0530
Message-Id: <179353117353.2955.16116793673558325261.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1723; i=mani@kernel.org;
 h=from:subject:message-id; bh=Qm6xI6pBQHw/JhBtXoNijp9M1lQctxsjcpVxgL/i6NE=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5x0nDJe3fEmoyf6sZec61aECAaAg0o1cX25Ki
 FMLJUqTzDaJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaucdJwAKCRBVnxHm/pHO
 9VZUB/9HhdfzEhaz1Jw9bmrIhDzgSuZ1RwQsR89b8mh4mJ9zXwYloZnv6WkSprFSIE6EPp9RqZt
 XKHYgXFs8bZYfS4UxpKutjkQS+HisdIx+1mkxHgfzfm264wxnLJuTOfhKq8x7UmcYv/rVc/8oKw
 cpZICoXHJfuHgQZOsPlyFEw0tj3OT9QEhrToa5W8qG0EWOtd4n/NR9jeuxcOn/G3sYJ/S2zaclA
 y9CJ8X6zfLb9ApJkpWyUre08yNOnIsyb+IBqYlRx6Mier6ZMlHo34ZmaKli/oC9fbAiGZl84q1d
 cpmOD6JtjKVavlf9u+8cXRUZpwr4SrFllq6wcvriV7ZQsWsc
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-10-23 21:35 +0900, Joonhoe Kim wrote:
> In DP-only mode (DisplayPort pin assignments C and E) all four lanes
> belong to the DisplayPort PHY and the USB PCS stays powered down.
> Three paths still touch the USB PCS in this state:
> 
> - The USB controller can exit and re-init its PHY in DP-only mode, e.g.
>   across a system suspend that loses power. qmp_combo_usb_init() then
>   programs the USB serdes, lane and PCS tables over the DisplayPort
>   configuration and times out waiting for PHYSTATUS, and
>   qmp_combo_usb_exit() resets and powers down a PCS that is not in use.
> - qmp_combo_typec_switch_set() powers the USB PCS off and on when the
>   orientation changes in DP-only mode, e.g. when a DP-only sink is
>   plugged in the other way round while the mux is still in DP-only
>   mode.
> - qmp_combo_reconfigure_phy() powers the USB PCS off again when the
>   port leaves DP-only mode.
> 
> Skip the USB PCS in these paths in DP-only mode. Keep the
> qmp_combo_com_init()/qmp_combo_com_exit() reference and usb_init_count,
> so that qmp_combo_reconfigure_phy() powers the USB PCS up when the port
> leaves DP-only mode.
> 
> On a Lenovo Y700 Gen 5 (TB323FU, Kaanapali) with a USB-C monitor
> in pin assignment C, resume from s2idle fails with "phy initialization
> timed-out", the dwc3 resume returns -110 and the following xHCI resume
> hangs the system.
> 
> Fixes: 896277138c13 ("phy: qcom: qmp-combo: register a typec mux to change the QMPPHY_MODE")
> Fixes: 89563a152973 ("phy: qualcomm: qmp-combo: Add preliminary USB4 support")
> Signed-off-by: Joonhoe Kim <26rote@gmail.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
