Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A24CC636CD
	for <linux-phy@archiver.kernel.org>; Sun, 29 Jan 2023 13:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94N37QN4R2K3gJ/Hi3b0VwdCsAf8J+qX8qDSnpZfRwA=; b=By+0cZpaj8UZCg
	M1lYRJQwTGff+F35+8HAppbQWJFBf+LiUUYHNv3yts/TJgeXZbcJ4+fJ8alW0qYiyXIksl+TSGast
	teF08v48wCzRSfEbqIqBFz//KSd/GBR38cuj/zoVhwwagI7fF7MgfdvjfSh9erOcpZgSZcVWnUVJW
	SVNyp/XUHN84at4rp7Ry6awjFJ8PEqTTHTGjPJJTB/ljmFn+SGCjFY2lrCqkgOKjcEQAoR8Qes7Lk
	H6ggJ222rLHNObHIK6EljJ4VmM6FY+Pvt0q6aEHywImFjjSFQMrXKEyBdY2FICkAN9BV+KO3+sB6p
	Bx8x9lL7aYua7NVmoMNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7uJ-001Vya-L3; Sun, 29 Jan 2023 13:39:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7tx-001VqX-Fs; Sun, 29 Jan 2023 13:39:23 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pM7tr-0003rM-LA; Sun, 29 Jan 2023 14:39:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	vkoul@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	kishon@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip: convert rockchip-dp-phy.txt to yaml
Date: Sun, 29 Jan 2023 14:39:08 +0100
Message-Id: <167499930030.3595793.1225360645667569018.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
References: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_053921_557185_0FFEFB6B 
X-CRM114-Status: UNSURE (   7.45  )
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

On Thu, 29 Dec 2022 10:44:28 +0100, Johan Jonker wrote:
> Convert rockchip-dp-phy.txt to yaml.
> 
> Changed:
>   rename file name
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: rockchip: convert rockchip-dp-phy.txt to yaml
      commit: fc7b83bcaf0334a80d175ab6b280fd838e8a5596
[2/2] dt-bindings: soc: rockchip: grf: add rockchip,rk3288-dp-phy.yaml
      commit: 51b2089284f3f08ca8971b65d5b2f66f926f7d14

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
