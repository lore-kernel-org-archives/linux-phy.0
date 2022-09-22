Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3F60C6FA8E
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 02:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g/PcvmDJKDdMP+uIA4a6V3EQ5QM9cjlP2bh7VGtTI+4=; b=UGtPu2n/iDVGeM
	rJCUC7PHG692JC+QeLuHavSuMfxQ7CT4rOGEnaImELfg6oL7edg5beCzDN5FnSK8LrsmkOgrOwAAg
	c5QC/FTe23wf1KqRI8vlFQ8noIrxLNMqlOmLGi6peDvTY1aP/xYuFfy+HsY9a0cNIh6UCTo9V9T6O
	j46lw1kZCUV85tc84g1378wxST8hlNGOT7GllefxuqlG95jldHnwn9Kq59gQqieUNi9huPvAfqG1E
	j9HQ6nP8h/GFcOb2It+oVQyv6K+6ogMMc19lba3+Ija9FjPNMpo6JbpoCp/ZQE75QCZH5vZrQsogz
	maqCzYJ59thUNPTry6Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obCF0-00DBCe-7g; Thu, 22 Sep 2022 02:47:06 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obCEx-00DBC0-Uj
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 02:47:05 +0000
Received: by mail-io1-xd2f.google.com with SMTP id r134so6672015iod.8
        for <linux-phy@lists.infradead.org>; Wed, 21 Sep 2022 19:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=h1angYPs614TPXEI7kKlA5pZMOV1qeh0yN6lGNKuXZA=;
        b=Lj5mw0VgCTWu8452v3MHJPjCGErBsrxpWmv7YLQum0zJLOBBpIwaOyqcRy34nQMCmq
         x0a4Iqa5rjSZMc0nTX0As6n/a6u3w0lxrv/yNRWmCnP9J9YKkOjUSfagnXkXyrjEJT6V
         Ge9V/sSV4By8hlnV4WQVPeDI9avKHF+PYuAu9ZKwexsyzIdHOAtYAmqKWXY/XzeEh37q
         EsYmGQdGPDG2R3uVQ+co9lphYbOwfbn/AtrtQquZ+/plJEzIsCiBS9n8M8qbjd0AOlfP
         SIVWkOdUJDckV/BXmI8Sd9aZgbAVWSlYxKYJY5HOquuzeWGsLtiiwUlXw9czPMoMUuqw
         Htnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=h1angYPs614TPXEI7kKlA5pZMOV1qeh0yN6lGNKuXZA=;
        b=t1OAtnA/imeeyxmmyviLr8wvENwdOcWnGugmKCOHaJhXW3/Ju23tWT3pGbsUCUPCe9
         yRLa7rEHmWVB3N70dgG6xJnVQJm2QvwslJbBbsvXw7ChaE5EXvxEe/aLJs+9i73DkTTG
         YQGTMRE3oxlQ8inQBb22By2kGcpLJBc4qZ+j1DJcCB3ZS2RJ0KpP0wDtXWlQIqS/2TdQ
         y/LyyhFJAvjmTxGVPlNQOtrB6DDozcqwbX+s4uvuIWsTr91aQw59rPskg7xuLbU9aFh5
         BaEAomq2sOoU3eCeTZ7Hz2YUo9CTKzHw5NV9aCkja09IBZq/1lTtwdOrO0yvXdUOZS5j
         SoHg==
X-Gm-Message-State: ACrzQf0BrWAZ+b1xKfGI6yLKTMJi/vKtrVGLVGoBVGtbl7tIH1uYKb6R
	D60CltopAN1RQoym/9NWue4=
X-Google-Smtp-Source: AMsMyM4YflKoLYGiqMpOqd+yPzlN9/XCcePyq1JTPj4Zuu0zLFikCgTjfu5/f02I1wQPJV7YMtrWvg==
X-Received: by 2002:a02:93c7:0:b0:35a:3271:1c83 with SMTP id z65-20020a0293c7000000b0035a32711c83mr737360jah.105.1663814822421;
        Wed, 21 Sep 2022 19:47:02 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::61a4])
        by smtp.gmail.com with UTF8SMTPSA id p1-20020a02b001000000b0034edaddd1d7sm1707606jah.144.2022.09.21.19.47.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 19:47:02 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 0/2] SDM670 USB 2.0 support
Date: Wed, 21 Sep 2022 22:46:54 -0400
Message-Id: <20220922024656.178529-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_194704_006281_FB1A8FED 
X-CRM114-Status: UNSURE (   7.33  )
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

Changes since v1:
 - drop driver patch (some maintainers might be excluded from v3
   recipients because of this)
 - add entries in usb clocks and interrupts

This adds compatible strings for USB 2.0 on the Qualcomm Snapdragon 670. I
have no way to test USB 3.0 because my SDM670 device doesn't have USB 3.

 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml      | 3 +++
 2 files changed, 4 insertions(+)



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
