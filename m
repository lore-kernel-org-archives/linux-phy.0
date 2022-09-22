Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82A71C6FA8B
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 07:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dRdczWo8dMzVmb9KAzo2USHkZi09V7kwT9ZPexi2JM=; b=uGxhjic+X0VRTE
	UfvmgyB4GW5jLdZu+FYPxTUiuk3cW8KLqbbOorIOYENHywKwTsQTXsgw9upuAmE1xnhziXvUlSGqk
	Uippfsk4nxUI/hEwoLBFehmxidgyBr9MtuPOkSVBdtlk7XH8FX5aX6xqaeOy1gDtJp8WSeRpdceUH
	NRX9xd2t/tV8J1PSVDMzu8d9gZY1XXisvMIfOfvEmpFSJHAY/Vp6pVmiAAsyWC7uvwh2jmE/wb8tY
	Nvp23e79D0fsQVlny6EIoWWrSO7LW7nI5uTnqZw1jVJd7/zozFrhVZta2I1yshgT9zEZmUG4xyFhh
	9B+ZSCwEe6GvETAl0L/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGog-00Dv0N-QL; Thu, 22 Sep 2022 07:40:14 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obGoe-00Duy5-UV
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 07:40:14 +0000
Received: by mail-lf1-x12a.google.com with SMTP id i26so13210607lfp.11
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 00:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=eESOgHovTRTov4VM1ZhFfRZLjpk+62WdXTila9dWYRc=;
        b=dwZWbMkY3xLnirQQ0eAHDce4lKFBsdbDUS8ks4HcbPK39XYEstpL9p87qnyYViVGKm
         EYbG0bYNwaqEhKzrY+u1VLPSho0rwi2bFCZg3Fwh8oVzFKM40UeZ3ixZoItJfLpvbV8+
         J8JA6+RClBgYL0AAYamHdmtMz/Gp0uS7ntClRK7QcfzZFm/s7nGmMJjJKMgzS408qsY/
         3dgvlyuewCdn+YaPg8ROXxdt0LVAaLh01A1BRHPFPikAoYpT5fBn6W5IFUIuAY947a0K
         nwgvAvMskb4Iv4M7VAuU1m4M2iFs7arjJ1axiPqiAEdVxbSMwngiq84DH3+fkDS7I05/
         Xqdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=eESOgHovTRTov4VM1ZhFfRZLjpk+62WdXTila9dWYRc=;
        b=m5P8ShR7kUXZWLWpYecXYXWFw/ykrpWF36YIRpIMdmxRMYKYL+AbS1rhtrPSSn6wcA
         clidvj/Gidm8/bei9atU1RfroDIRcCIZ13hXoAzHCkJGZpOmh3emsqerBuFVp6E2Gu+7
         BdssyiMvGpXjVCuoIE2/G1k+My3p/S/eRUpLn40XsHnmUzvzBDJ+RxoQVD8eZ6VjHKoW
         vjjvoljxEfmGYbSr0Dr5XG6gnXE3Ga7cvEjslePBpgHJTRb+anLApKD4Um5d5PdjHbj1
         52su4+eRQnxQ7XoyOjJJlt2clE+d/oVADI6W/ZRHZjR2wkVc5gBGePvjJWIgUD8QMfP7
         drLA==
X-Gm-Message-State: ACrzQf0XmB7XkxTHVOstI2qIVScrZNkVcYRhUAkmvi0YEomgAPyMjljD
	r96RN9n/mcz9WldZDGdbpq7IYQ==
X-Google-Smtp-Source: AMsMyM5Qo0n2NrO9wU4LO8xjTlNr1EQ0sx6tz7EoleVH4eUML4m+HLw2SBqUzeDYm9V6rw/GQHLOXA==
X-Received: by 2002:a05:6512:3c89:b0:499:2069:17b4 with SMTP id h9-20020a0565123c8900b00499206917b4mr799880lfv.235.1663832410175;
        Thu, 22 Sep 2022 00:40:10 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d1-20020a056512368100b00494643db68bsm807960lfs.78.2022.09.22.00.40.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:40:09 -0700 (PDT)
Message-ID: <18f7f773-e61a-462b-9056-3ef26353578d@linaro.org>
Date: Thu, 22 Sep 2022 09:40:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 1/2] dt-bindings: phy: renesas: Document Renesas Ethernet
 SERDES
Content-Language: en-US
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20220922051645.3442321-1-yoshihiro.shimoda.uh@renesas.com>
 <20220922051645.3442321-2-yoshihiro.shimoda.uh@renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922051645.3442321-2-yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_004013_020941_E01C6428 
X-CRM114-Status: GOOD (  12.08  )
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

On 22/09/2022 07:16, Yoshihiro Shimoda wrote:
> Document Renesas Etherent SERDES for R-Car S4-8 (r8a779f0).
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  .../bindings/phy/renesas,ether-serdes.yaml    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml
> 

Thank you for your patch. There is something to discuss/improve.

> diff --git a/Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml b/Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml
> new file mode 100644
> index 000000000000..04d650244a6a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml

All the comments from v2 are still applicable. Please fix or respond.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
