Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5658DD1CDA0
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gu9BHFzL0KP+M1Le+3DfQiwmDJJo4VX7+gCXUHzAq8A=; b=qxJsQIQdKokOqv
	qLCBQBDWHy1T64CCDJClszYhUPRwsdaE5UK11Bd62d2RuqPxGTLTxRO5dGU2gW3zpzACzfhxhKjY3
	0kvcCqkHud1mnGJJXLS8cjmUJE5EUNcYG4SC9bpJxkd39mHeGQzRDVwFH3bFhX408zCqAOk0Ibtg3
	/Jb2P9VXUHgnXRRLd1ATu1Wljoat06Xxi3dbG2dKK2M1T50CH4fuqxQ38YWpDwa4lBmZUr3R+IS8c
	4wCPBnE2vYzbr/xXHrh+00kEAkRrvGRbAERJBonRLIU6ueejDw7wHS1TGPGW1Rn0KGWmF3mR6HTfn
	9wx+dbrED8vaISjqnCQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t37nB-00000009ie4-0EGj;
	Tue, 22 Oct 2024 05:50:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37iA-00000009hvk-48iR
	for linux-phy@bombadil.infradead.org;
	Tue, 22 Oct 2024 05:45:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=nGIKiPYKk79Dzt7Kz3G4IaKt1K7PAxVt0WmOLi1YOXM=; b=HkfvwXJfqBDqGzaSA9ex99GdgX
	wiOCtw4IaftEKg0chiD6ngYelQhXZixPizU91HPWizt3T4bAtNz3unfTq1Ms3II83N/JEsPB4OCyJ
	7IbqiQ3VtpOelnTOU1IFY7ht0chiNxbEo4T7WtTUuiG/7mbhsaSk6Cc1dMlhPhAzisPSiufaLBdy7
	nuQTypEne6bGTbUygw52h8s8w2UdBFKNcgWCPStQgwmJv4eR3KSLrvf1KaHjCjfY4pp3fkLSEyWw3
	eKuQG+R3M0K11LkXe9GPA2SFheHlG8M1cEXw0MJSGdMHpH+jAH0PmohTj85EjjioG7OrW66SiwPVE
	WlU2Y4Wg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37i3-000000088GV-2XGO
	for linux-phy@lists.infradead.org;
	Tue, 22 Oct 2024 05:45:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D9D805C5CB1;
	Tue, 22 Oct 2024 05:45:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C685C4CEC3;
	Tue, 22 Oct 2024 05:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575925;
	bh=cEboKyUu5mz6vBnjkqxkUHv7xHRAJzZrS5soKaeqo9s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kmUcAeczns72tVsyg5UECqosb6x4JmzL8aahyURKFdOBeUC/NWnPqfznET3XNIH0i
	 Rr99Ug+su0IYpRHb3O38bn7ko6bVD5lzMM11fQaVMQ1UYJ6oDtjUjCEsKD2U4URWZB
	 7DxmcXK5LBvk5pKy6NXqUaNGJR69dZ/+knK4EL95QK1lz4PIIiVLEYyd1+VGj4Sg2X
	 aVgMNMb0Y/OljzPejOATVGeomazmKWLuiYnn9X48rL4IbrUmHiYdlR6sx0l4wpMxcz
	 v5f/mU0DBN4zaEmqhm9xcDuimV07wGIG96hMEydoOh5y7Aq9S9KMAR+on4cuXxoEtE
	 +Jw6PlrRS6fTQ==
Date: Tue, 22 Oct 2024 07:45:21 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 SAR2130P compatible
Message-ID: <caermtfrsfkiybw3lgqzvhp5l6lj4zqk4jt3w6sd3xmu7pbz3t@xl63v4zagx26>
References: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
 <20241021-sar2130p-phys-v2-1-d883acf170f7@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241021-sar2130p-phys-v2-1-d883acf170f7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_064538_159320_96B6E3EA 
X-CRM114-Status: UNSURE (   8.32  )
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

On Mon, Oct 21, 2024 at 01:33:07PM +0300, Dmitry Baryshkov wrote:
> Document compatible for the USB+DP Combo PHY on SAR2130P platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
