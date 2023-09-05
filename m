Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 548ADCA0FFA
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 18:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3mJyfYtp0EIUUoQtqdh+4SQG1VHWiazq+cgrtTzwzY=; b=x0Hs8w0hOtCSyH
	gTNnLetoEC1USI6Z0S7Kyz8Nj5SjWhOG6Q6bj13Zpa+DDvYCc3wqA2YjJZXhiqOFOqP+K4R7tsBki
	kYOY+AbFpFxX/xG7wNafJ0IjFLUlYXuM94kocrcJw4H9PXBtn/mLPZJ7QyOQwLsWjuUlVImfoM+Ux
	7+ToTkHbCOlbFw3zNGTmK6iX1YP4L2MTnDe0zByBk0wgzfwxKgm2cNX181vRtT7nHgMahyBU9xW/x
	8xXHqfk3vfJCYsCstgKkHtzeEsGDxFhoO7zLIRRqU27LKyzAFdU4sbs+0AC7qxQDqkWcHxRqUwuVq
	NuxzI/wlOVaHuR4ZTjBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdac2-006WEI-0B;
	Tue, 05 Sep 2023 18:17:18 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdabz-006WC2-16
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 18:17:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2DF21B81637;
	Tue,  5 Sep 2023 18:17:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40F09C433AD;
	Tue,  5 Sep 2023 18:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693937829;
	bh=eJvviLwDFqy9JoGB1FIfd4zECgh9rL9Utbsa8UqT9zY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fWwkGOTBJiXRrUmLSjDfge8NnrrB0ljH9O1BcNAaSq6UvaLq1Q9iJCtD7/Zu2YJKn
	 /sbbh+VoiLiw63Me9M41FT63ozxHfQYWNvdrsglus5eyMAs5fCnbYEa12CbuaBJHMQ
	 GDeAmfL8QhBDGDYwV3gMCknPixQTviyPlYDY8IntXOr+JCqK5r+MOwBCU2IGSW31ya
	 /7oG9Ihc4pxRhed4JqBY5v0ZKJq9FLz1N7i65IpF5HHxk1FVHg4J4s6805cSkZta8M
	 rIJq8gDxMNsNRS/An5jGIQ30SBbmU0jeQca0YfduiWw8+inWLgKHJM8AH7+K+UB3fT
	 DdwJ297tVhvzw==
Received: (nullmailer pid 3744523 invoked by uid 1000);
	Tue, 05 Sep 2023 18:17:07 -0000
Date: Tue, 5 Sep 2023 13:17:07 -0500
From: Rob Herring <robh@kernel.org>
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, quic_wcheng@quicinc.com, kernel@quicinc.com, agross@kernel.org, krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@linaro.org, abel.vesa@linaro.org, kishon@kernel.org
Subject: Re: [PATCH v2 3/5] dt-bindings: usb: qcom,dwc3: Fix SDX65 clocks
Message-ID: <169393782673.3744474.2406769381713215825.robh@kernel.org>
References: <1693909838-6682-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693909838-6682-4-git-send-email-quic_rohiagar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1693909838-6682-4-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_111715_533163_7F925101 
X-CRM114-Status: UNSURE (   9.01  )
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


On Tue, 05 Sep 2023 16:00:36 +0530, Rohit Agarwal wrote:
> SDX65 has 5 clocks so mention in the bindings.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
