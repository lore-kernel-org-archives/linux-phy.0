Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E36ABE7107F
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Av6bJEWtub0w7Rl8Q1imZAJeMVSoTZCFrBoVMXVNBVM=; b=Ute5uizOXlUyVu
	w/466YmUzRuv4S0NhqfXoenp0I4kCLohlBqU8eD0ma9g9DxqWDX0AX3NoN60/DIdxtx/fgsNzZSeW
	hHh+aXXN8TcZYNBxtLSIaGnU4FXKsvsYy+N9e+HWl21hPQhtG8SSn0q1wyxWwQM5gODIlv0nAbJID
	V5LZXb84NXQw9DzyNltDETk5oPg5cTnlSmfI9onm1CnTTjR2+MUaZK/v5Mi2C3U0R512S8BMzaaec
	9I5zQhXDFvLB1H1qYL968mv7ElBGlrwIU6zymlzjaMKVR87F773GnCxlQ879CD0uIBF0eVjFkRm15
	Uqpx263DnjQ9y503/Mlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgh-006HEj-1y;
	Thu, 21 Sep 2023 14:29:51 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgW-006H96-34
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:29:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 85948B820D2;
	Thu, 21 Sep 2023 14:29:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63ACEC4E76B;
	Thu, 21 Sep 2023 14:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306579;
	bh=9tvStd1eYmAawVVbsDie2tHpFeVMdoFAdNDNydF7QGQ=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=auje0uEUE+m+3g2jH1IuoGo/I0FUvd82445GiTAR/DKsQo1/fasU4p9KGyhJGfrFE
	 pWAi6ckAxzjwY/scpaEirq/9D+9BiIXEpXPSV4RSIhq3vcGMRisVhxOTnbhjDHlBrQ
	 qg+MR3Bx/jF9jhdb4hxEybOki6fx/onS1eehXeqGiirYCUigvmYfO3k+hYQcRO8tWv
	 NzId44tjuUKuIQNYd6obQzKHjfF/c5i2rtyGP+7B8B3agztfFTTUeWw2YpWinEIAvH
	 sfCxjqdAzU+d1HsF52XCeRJUxfho9A+PBQuBYcKrSkN8U7P4A1oBVf9E8n8B6n2Tqh
	 qhGQhWOoZLTfA==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, gregkh@linuxfoundation.org, quic_srichara@quicinc.com, 
 quic_varada@quicinc.com, quic_wcheng@quicinc.com, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, Nitheesh Sekar <quic_nsekar@quicinc.com>
In-Reply-To: <20230904063635.24975-1-quic_nsekar@quicinc.com>
References: <20230904063635.24975-1-quic_nsekar@quicinc.com>
Subject: Re: (subset) [PATCH V4 0/4] Enable IPQ5018 USB2 support
Message-Id: <169530657502.106263.11564908217674550453.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:35 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072941_159910_1B2ED2BF 
X-CRM114-Status: UNSURE (   7.25  )
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


On Mon, 04 Sep 2023 12:06:31 +0530, Nitheesh Sekar wrote:
> This patch series adds the relevant phy and controller
> DT configurations for enabling USB2 host mode support
> on IPQ5018.
> 
> Tested with a USB Mass storage device.
> 
> Depends on:
> Link: https://lore.kernel.org/linux-arm-msm/20230831030503.17100-1-quic_nsekar@quicinc.com/
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: qcom,m31: Add IPQ5018 compatible
      commit: 76bf09e08667f21bc3d1a8857f542c1ee54d9667
[2/4] phy: qcom-m31: Add compatible, phy init sequence for IPQ5018
      commit: 241da15bd783fd2ae3b2f16817d802102590aa0d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
