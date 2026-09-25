Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60620C98321
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 16:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2jsFFHaeIZiHTk3iXr25xvHBVPWT1qDQj/dNlQQIrQ=; b=pSgfx+EJzUH8ZQ
	g3Z+r4dw6pIZt+Ju6hnHChu7trzP2RSr7cygLvjmagwVJa4PNfVo9wMQAXC/8tyMxKSIQnxiTfT0c
	vQC572VllfOcK00Jzdb+5UQRLLPS1lAl8zNemng/tRL8xj7AOQTk/oaxYXPLI4rjj9EVoGxdWMfRk
	vevTEjJwo9pYRaDX5lENefToMxLkRndMfzvjo/JFKTvZsYt6cL0zt6SxIbk/pcViK/BjeIKm38EUP
	FwWqbqgxV51PgUGoXGRUipL6IJcqEmqsTI67c+l8HKmir4Fd+pNtLUamJn6VayM9R2J8HlAUwZ29d
	TPTPGiAXYx3/Q7PzqOBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA8zh-0000000Dyc9-3vW1;
	Fri, 25 Sep 2026 16:41:54 +0000
Received: from mail-qk2-x11.google.com ([2607:f8b0:4864:34::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA8zd-0000000Dya3-07om
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 16:41:50 +0000
Received: by mail-qk2-x11.google.com with SMTP id af79cd13be357-93a0299c787so71354085a.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 09:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thinkoid-org.20251104.gappssmtp.com; s=20251104; t=1790354508; x=1790959308; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fggcrxfuRaOrEhqaxdzPjwQprECIofXEF06YEsSo3TQ=;
        b=SHVq3apUE5R5TXGw6WzH60RFpj1tWyxll2nr8D1rUxP9LcH+MYouEH+A8iPVN+K04L
         t1uKmaLges2gjcrZIQssmbN7Pn9qJzgPsagoGuoajbskRS8ADJAbKFtvMm2o9AXL5nHt
         1UFFclfQNEdXSlpgmlb+683Eptvfq4QjuFuq/S8RaRjc5QMMcZHXFMu75Ue1VvBqOWhn
         r7UWbFDLUlfEVaf52zQtqZ8FJhSuuF0w9Nz/Q0dtcgeVzdPr+a86RCVhj7nChWD90uS5
         sezjqo0mTJubQKdmSn5Q8T4NMTM4yZ7btEYzLo2ctoH+QDlUJJEi+j437F5vrE7HR7mo
         /oUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790354508; x=1790959308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=fggcrxfuRaOrEhqaxdzPjwQprECIofXEF06YEsSo3TQ=;
        b=bXkFqijiz7TtD3OKkCR6Z9MzYkyY4sc68OlxXytBQX38mJK+5HYgZjhX4GdzBaRYxZ
         wWEGqFraAzEz3g/JoDk4A3zsP+HiqGWMnTeXM+Py9B7vpn7GEKKIrVDppI52FhSeLMyS
         /59hsy6yyu59uN57+Q9DQIAoutgkNmtWKOvpE6GxN+AtC3edBRCLZKgaTPjcXtbogBf+
         5RoSy+kbu5vFmJlJP1QD74090Iv7ne6tG4MB8N/x6llCf73TIYiqn9IN19wvSWu5qX/q
         OGplqcA+JMx5XVnkVevkACRE4Byt8OwONgz6HGFVvrw+e02zMzvK4FptmvshzMz3ItI+
         RThg==
X-Forwarded-Encrypted: i=1; AKwUvBxr7/WkvPyjOFN1bo37dv0W2uQyS4cs1YgvFH0GxaX0O7KpoycVkE82b3VN7ORvzJatMZm1TShW6L8=@lists.infradead.org
X-Gm-Message-State: AFuF++kVw7ipOZhn/khl7iduxc+GSZ7VgJPQcd2Hrq9XXTwaWlRpcwVt
	wYE5rVW7+vEPDnrA06YOQQvhMuSnyXZQl6/gZGUqvijdgdlCp9SUDxwDoz+OeWTrknQ=
X-Gm-Gg: AYBFou39V44+8fBENmMqzWu4XDL7yD2uT++IrjlW9cSwYNERfGMlIO6gW72XvuerLdu
	UuII9T2F1PfYW/ZfNJyO2UlxjLKYukwnrsjMO47tfgEBnMbduizszKNK8UsdgJBGspeL0ZAPQJg
	qiJzjRjgzfi2X8Vk7hI5CBAd12ml3QrHca1uYG5ETnRR7twKuBExdwW714XIwbY1pLxfS/8SHof
	2fyLZzKLivwTaUqZCztCJ1qvYHXT6txOl0VMUZb10ouYAN6HgHnXPLfO9J6trLbtUXMeWziRACZ
	wE9cQ2Mj7dH6zm07660xzCkppY2BLke1v4yiUbzcpNh7M6FEHjXdEgkYkkz+xbOXQwK9CHempiK
	mKwu2E82ldn8wjo65jMFc9Ys4gPpoKI+JKZrh3uWYAWG+FYp/XtiOyXY5o5uOs5AL0GrcdyTP0h
	d8f90hh4ilLWrhyKRgRSya5n5CcefHGdcI9ecMslC2kQaXgfg=
X-Received: by 2002:a05:620a:2548:b0:93a:2d07:142f with SMTP id af79cd13be357-93c43b833c3mr577686085a.7.1790354507706;
        Fri, 25 Sep 2026 09:41:47 -0700 (PDT)
Received: from armok ([2605:a601:a61d:7a00::2])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-93c54183888sm37869085a.45.2026.09.25.09.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 09:41:47 -0700 (PDT)
From: Liviu Nicoara <lnicoara@thinkoid.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felipe Balbi <balbi@ti.com>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Oleg Keri <okerixx@gmail.com>
Subject: Re: [PATCH v20 6/6] media: qcom: camss: Use data-lanes starting at 1 for new CSIPHY mode
Date: Fri, 25 Sep 2026 12:41:38 -0400
Message-ID: <20260925164138.26326-1-lnicoara@thinkoid.org>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-6-dc244e124e71@linaro.org>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-6-dc244e124e71@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_094149_085745_55788DB1 
X-CRM114-Status: UNSURE (   6.71  )
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

On Fri, 18 Sep 2026 14:56:41 +0100, Bryan O'Donoghue wrote:
> Introduce a simple flag to differentiate between legacy indexing @ 0 and
> new indexing @ 1.

Tested on a Dell XPS 13 9345 (X1E80100, OV02C10 on CSIPHY4, two
lanes), same stack as for 5/6.

Without this patch, data-lanes = <1 2> on the CAMSS endpoint programs
CSID0's CSI2_RX_CFG0 to 0x00500211: CSID listens on PHY lanes 1 and 2
while the PHY powers lanes 0 and 2 (COMMON_CTRL5 0x85), and no frame
arrives. With it, the same DT streams at 30 fps.

Tested-by: Liviu Nicoara <lnicoara@thinkoid.org> # Dell XPS 13 9345

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
