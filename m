Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A01606A6A8
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 09:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zK/Y5tfy;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=arndb.de header.i=@arndb.de header.a=rsa-sha256 header.s=fm2 header.b=R0Ms4PZe;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=bRUwkXSZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-Id:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Unsubscribe-Post:List-Owner;
	bh=i9RhkH8Qx259bpKMUmjxef2q/KN02qeEURYd7JA5Nc4=; b=zK/Y5tfyAPnaVDq6UyYAFhn0Fr
	rNgdSI71pN6HjO9+7gzIbZlDVI+nTJXixgVrCX78WXbz4P8/EbOrM+IQB3tyqeCY1T/ta1dNo7nw2
	2hDSpnFP2SXk93tyCAfBRdi/YiyFXwP1nR56Iep36mhRxVf/+61NdvUbRTaQ1dITMHwRsOtO6iBeV
	iWJXpBaHQXCbdijCmeFxuvJa0XxJTnZZBD1uoG29wG2//vEQvYyvI7cxA1uzGVP3tTr125wr8JI5f
	KI/a4tHSkvPt29xo5u7QqC4pjp5YzElo2fiwIYqw/UozRqjaCLfDlDv/EjQfUibWdmFk4dpXQMTS3
	dY/5QuoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVmfv-000000062WP-1a5S;
	Tue, 24 Nov 2026 09:18:55 +0000
Received: from fhigh-b8-smtp.messagingengine.com ([202.12.124.159])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVmfr-000000062UU-1K1e
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 09:18:54 +0000
Received: from ams-compute-02.internal (ams-compute-02.internal [10.64.2.62])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 8BDF27A04A1
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 04:18:46 -0500 (EST)
Received: from ams-imap-03 ([10.64.2.23])
  by ams-compute-02.internal (MEProxy); Tue, 24 Nov 2026 04:18:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1795511921;
	 x=1795598321; bh=XocY+M1AcIUeIJvs0qU03q4fW/jTPO4xx3yX5EWKMd4=; b=
	R0Ms4PZeqAkU1DDBEVsGat4DITypGqS2HTKHdWUJ+DbKw1ZvqUulkf/bGo2pJymr
	YH6KbJbZCzc5IP/0a0Dc8rUvID/l09lPDhcU1ZeUyQh5pMCJrguYF7ctJgFeR4EA
	toCdPGcBM2ODtnvD2HXuzlzENTmbGN8MmCeSuMQx2CJT4XkeGWa0kg0zgnGQ5KiY
	iN2VunAvsrmUc5+tO/VeI9xYz2vBaNIXPoQ5gMi7Zdd3ceJ5C3wUkl8gdLMJMYQy
	dH8kAS7o2x0bPVHQFn0RetXunU00AoumlHajbN9yvs0ufrA9tyU99vcQWLT4+3E1
	oN/T3N8jqjoZwU9NfE/5EQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1795511921; x=
	1795598321; bh=XocY+M1AcIUeIJvs0qU03q4fW/jTPO4xx3yX5EWKMd4=; b=b
	RUwkXSZ16+iE9s79Rdw+XXDMwHjCA57nnRbNjbz4pxldE8BzX19sa2lzIyCDjed9
	6coECF+7jNZXE6PddkfIlcpe+Wy48AnsLVX1GgxFRAfpgMoqgAaIFcPb5NLPX/0v
	gCZXfu7G2pUgIiNN6KToE/r7NcrHW5I+f0He1BUJk9PfiRr1/pvpN8+2BuFpxlbI
	iO75D81eoaQL+umZLWYxAcV9w/TeoZqhzhMXU78i/F/1rrg2ftfWZDNwUNjcAztf
	dKnNJOg+LJdB+Nf3d5C7Zi99uCXsEtX98yU+nvOv5JopqG/btzG8OPPfr1qPS77d
	tpqJ2Nxpdv+WaGevfDA3g==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=arndb.de a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1795511921; d=arndb.de;
	mf=PGFybmRAYXJuZGIuZGU+;
	rt=PGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnPg==;
	s=fm2:rsa-sha256:Xen0A7v0ThueRP49Wwoki/e8O+uPjznclxcv1iH0O7y4zKE
	EAu5qQa7oeUqpaN0BGUGElu/XRYCgpODJbuuftbBzI0c4ShbnFWgJx79S73R+wka
	vqC9EFuL4UP27sPkL0ICdO8o68JWnTI5/YD6Uroldma8Ei+xcb94BN6wBRbRUYSd
	v7YwSDyTh80unmjAwr3dzJFDF0L6/tPT9bzxB7BefSpbxImwSpVACbxZOUCH2pxG
	/cEQabkJJZrbY+t5cPsgtCLfwkD9TvQkJhsRFyR8TSjKVKZZM3SBqCK1lJceOp9Y
	GdUfYPBu2cIHcPHjA7YVyqf5z3ergj4F3R8ZhwQ==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=12;
	hn=cc,content-transfer-encoding,content-type,date,feedback-id,
	from,in-reply-to,message-id,mime-version,references,subject,to;
Message-Instance: m=1; h=sha256:lOJvyBuFvi/IgWkarJ75xdxMUrYdqmOeuxDssazp7h0=:B3Mj+76bVMQxXOi8IqWqtsFyzskk/wTbXDuEh/uIyrY=;
X-ME-Sender: <xms:bFYFa0giqAGvgzU3JUvEU1ioAgA0YwHWmPTMjt9z7vrXoJBvAnbfvQ>
    <xme:bFYFa30cUqn5JBAc3jvWzupGlDrK40He8RC5dt-u1YdMAzNqpPOyibuRIpHJhDWPb
    7yvsYWRY0JibANghS1fYzU8oF5yOsT2HLCSqQkarh3YOYSV6uv-dGk>
X-ME-Proxy-Cause: dmFkZTGRtg4XF1eY6KI/R8BRBNaqE9DOsPcN/jTjzdrzqiK/3Q7XtTIjabc3oZpqwjiEGu
    ThX6CzOJcz7Ciga8bHw5lzibadEkqVv/4bBoTU4nod7jlB/lVCx9QFHljKp7ah9QybAWSE
    ZHQaGB2GgaOLwHkt1vZ4m9Sza3Y1Xy8Vw1GElFEGQhmE6VfTlhDZ7Sgjc9BMcUubBAq3Iv
    RarWI8hvqXGmey23V0fkBKtpnYBkV/0RIcbC5RdrgUgHqibcTuZp4sE6sBAvXnCojRLYGg
    tccO3mZ+880fhyqHXlH7uhDZo1oKw4e2FzYieJUmOg1XN/jLXDk+bD3murJWTlQQds4Uow
    Ep+ziyhhQE9xZqh3wToitVtzuhux7Oz8IZwPhcpc9P8X5bC3bgcGrKaUQLsImb+FUMCd6A
    BN6ZD3ZkEe9GwS0ToyfqV0Yj8AyglkgOvnruX+7zFOwAO8l2yj8BJzf096m1NeY6h95NKy
    5OuSmmftL+9tog77eDrJB1SUzIhg7k9ry2LiQ55WVcUj2jzwVINa3cRu/99s5/7tZSw6ia
    strJHPU88xx00CPkOasY1iyfpGqr3jdjJ9FvuY4HfhXkYO0THkpDE0wUBXfong4+2bg8NZ
    GiIyNDaZt3b4IBuM56KkHSjHd3fi9WafDEHS8iezbGIB3iQYNLnK78X5ncnw
X-ME-Proxy: <xmx:blYFawE0y68xoizWhCLQI-K0N2Ad4zgAwa1PavuJf1OI9hlu-9Z-Lw>
    <xmx:blYFaytWkAoTJBL400cZwTKWfuAd1DNU6fiTmsUcIQvkjd1MCZOW0A>
    <xmx:blYFayqQgraHauytHWogEGrpXKAEWGgKz7j-2tNebkHUIodTyvEMAw>
    <xmx:blYFaxmcDZI7tkXTHbjvEkIO4YUecgcx18Uv4_y1kDelc-XAKC7Qeg>
    <xmx:cVYFawtMI4qIaxxCnzY9pjdd5QiiNLOG2J_SfqD11XqheEqpqWOGwI0->
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.ams.internal (Postfix, from userid 501)
	id 6E2D032A009E; Tue, 24 Nov 2026 04:18:36 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-ThreadId: AIWdN_2nP-rJ
Date: Tue, 24 Nov 2026 10:18:06 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Krishna Kurapati" <krishna.kurapati@oss.qualcomm.com>,
 "Vinod Koul" <vkoul@kernel.org>,
 "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>,
 "Thinh Nguyen" <Thinh.Nguyen@synopsys.com>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org,
 "Manivannan Sadhasivam" <manivannan.sadhasivam@oss.qualcomm.com>
Message-Id: <9fa428e0-f685-410c-bcdd-319fd427d2cc@app.fastmail.com>
In-Reply-To: <20260913-eusb2-interrupt-v8-v8-2-0f505b9c394b@oss.qualcomm.com>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
 <20260913-eusb2-interrupt-v8-v8-2-0f505b9c394b@oss.qualcomm.com>
Subject: Re: [PATCH v8 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_011851_761850_B0977560 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, Sep 13, 2026, at 16:40, Krishna Kurapati wrote:

> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index ea47975e288a..038c2b58bbe1 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -21,6 +21,8 @@
>  #include <linux/phy/phy-lvds.h>
>  #include <linux/phy/phy-mipi-dphy.h>
> 
> +#include <dt-bindings/phy/phy.h>
> +
>  struct phy;

This broke the build in linux-next because there are now two conflicting
definitions of PHY_TYPE_PCIE visible in drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:

In file included from include/linux/phy/phy.h:25,
                 from drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:15:
include/dt-bindings/phy/phy.h:15:33: error: expected identifier before numeric constant
   15 | #define PHY_TYPE_PCIE           2
      |                                 ^
drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:47:9: note: in expansion of macro 'PHY_TYPE_PCIE'
   47 |         PHY_TYPE_PCIE = 1,
      |         ^~~~~~~~~~~~~

We probably just need to rename the enum values in phy-qcom-uniphy-pcie-28lp.c.

     Arnd

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
