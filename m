Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60C7EC4332F
	for <linux-phy@archiver.kernel.org>; Sat, 23 Apr 2022 14:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rC0j3u4/1qdNeLOC0DY2sWoh4OtCKzmIBUwq5xsDhVM=; b=Ye7QPDorirbTuo
	fNDYGpNV/VLFGPBx8KD0mo6ef9QFy7sBLihhPM8Dy5RsdHJf50y65H8Ne6X4p/DdLzSNUj9g2yDAl
	SIR8sFPV2nTBTdj1DVMAtVBIAwGqY5dFSMS1Cb4q8cDDBvu01+85LPeKzjTMNuKGw4xz95zX4M8ns
	xqirk7Vnn1MsOM+SMx1QR8wUlhNrtERk/fIzwjhIgh2Yxe3zxzVbbaIzqHpLI8O3TWr1enm8jqVmQ
	G68oHLnOBngZ3H/0/u+PqytyLBciI0cmkcN4qu5kqyMlL/Wxqzf3kAbv5dX5EKdWM1L8iC7cx3lmE
	Wseg/PcZ7sc2MD9yVyDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niGjY-004Ssp-KB; Sat, 23 Apr 2022 14:27:36 +0000
Received: from mail.tambre.ee ([2a01:7e01:e001:cc::3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niGjT-004Ss3-Ts
 for linux-phy@lists.infradead.org; Sat, 23 Apr 2022 14:27:36 +0000
Received: from [IPV6:2001:7d0:8a11:4700:d8bd:7f1f:5e8b:fc58]
 (fc58-5e8b-7f1f-d8bd-4700-8a11-07d0-2001.dyn.estpak.ee
 [IPv6:2001:7d0:8a11:4700:d8bd:7f1f:5e8b:fc58])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: raul)
 by mail.tambre.ee (Postfix) with ESMTPSA id 8855980062;
 Sat, 23 Apr 2022 17:27:24 +0300 (EEST)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.tambre.ee 8855980062
Authentication-Results: mail.tambre.ee;
 dmarc=fail (p=reject dis=none) header.from=tambre.ee
Authentication-Results: mail.tambre.ee; spf=fail smtp.mailfrom=tambre.ee
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.tambre.ee 8855980062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tambre.ee; s=201812;
 t=1650724045; bh=9gYBnH9KPURUghbXDsxTxayhdYgcj3IoMHz0DPDiA00=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=YFgvVKD7HJJ9Dxt3j4BzH1t+gogs0lTsdo/enGYiXmC3VXwnRvQ3t57zMMt0iZ+9u
 Jq8Tz1pauz57NTsXO5SiXynbah+A6+ha5nqC4k3sxntLvGPG2geobXEyLphQ+AuEVQ
 iYiQV19jWpvftSMs3dpA1XLNdylbAPuz7lv1tjUks0SW91D1PlFhJEePXndrLmM+rD
 ikX5KpU9FGz3Rx+vUhn+9sQ3swxSMHZHaYzK1pi93hOFGrD7CbbqSH1P+dV0WtViIl
 wKd75cZX/ZjdDfdzDOf0+l2ccErKsDzSqYtZDX96R7FvnavUjmMR5kBTQidW+GsD0V
 CqQNvyZsmn+0w==
Message-ID: <50b80804-e95c-2137-5d74-2451e5bb826f@tambre.ee>
Date: Sat, 23 Apr 2022 17:27:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH V2 2/8] dt-bindings: PCI: tegra: Add device tree support
 for Tegra234
Content-Language: en-GB
To: Vidya Sagar <vidyas@nvidia.com>, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh+dt@kernel.org, thierry.reding@gmail.com,
 jonathanh@nvidia.com
Cc: kishon@ti.com, vkoul@kernel.org, kw@linux.com, krzk@kernel.org,
 p.zabel@pengutronix.de, mperttunen@nvidia.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
References: <20220423124858.25946-1-vidyas@nvidia.com>
 <20220423124858.25946-3-vidyas@nvidia.com>
From: Raul Tambre <raul@tambre.ee>
In-Reply-To: <20220423124858.25946-3-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_072732_441180_39BE4FAA 
X-CRM114-Status: UNSURE (   3.04  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2022-04-23 15:48, Vidya Sagar wrote:
> @@ -47,16 +64,33 @@ Required properties:
>     "p2u-N": where N ranges from 0 to one less than the total number of lanes
>   - nvidia,bpmp: Must contain a pair of phandle to BPMP controller node followed
>     by controller-id. Following are the controller ids for each controller.
> +  Tegra194:
> +  ---------
>       0: C0
>       1: C1
>       2: C2
>       3: C3
>       4: C4
>       5: C5
> +  Tegra194:

Should this be Tegra234?

> +  ---------
> +    0 : C0
> +    1 : C1
> +    2 : C2
> +    3 : C3
> +    4 : C4
> +    5 : C5
> +    6 : C6
> +    7 : C7
> +    8 : C8
> +    9 : C9
> +    10: C10


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
