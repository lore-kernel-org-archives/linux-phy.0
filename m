Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DECFC3DA66
	for <linux-phy@archiver.kernel.org>; Wed, 23 Aug 2023 17:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bXYoqr9wZ6Evem1+8GmN5opISYMA8jEpb0Ct5sshbyY=; b=hcbthvR3cWrL+a
	DrKMsx7tQJoN8xfjsqa6Y9sfHAZV4FTECqG5kwqn15JPchGXvyaoWSelQWT/KfF5I/JRHcZWdVqiA
	2FnsS1jM8S8PiBKugZs4+rLJJDF/bL9kKtbf/IgcVqcKSFH9lzFzD7xbBLnwGTInSt7Zom0ZE8iiU
	iAkWFHLSjQ/oll1OFBCSl9qDTxIZ0dBJlSlE9IQ3tuLzEpOT3aJMNKDsbWx1V/PMS8MbjE9kENZzj
	W9hxSoFlehetanArjuqhXYCMk0idYRkQ7ifHntb2+O8wjwuU5nKZ4bwPhNf8zaPjnZkT8q+1iZpnb
	qtwivaTjNlnT16K6V3Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYrRK-001C7i-0s;
	Wed, 23 Aug 2023 17:14:42 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYrRG-001C6h-2E
	for linux-phy@lists.infradead.org;
	Wed, 23 Aug 2023 17:14:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692810877;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bG2xKU4nKpiOTOC7jJuTobG/6zkTN0J89oQdXZw7UhM=;
	b=RyEs6vw4jY7Oh6VAYnSLrDyAlS/cArkHonjY53BSpegsypClTX9OiJlsN8CcN74m1BdkaC
	gUOdSfow00Oh2fI8K5E5WBfImeX0OdbjASyTFlJdm8CtMw0wtdSH6XwR2MGtNgs9IBzFvX
	osd27SX+1PEc4sLwJV/XiiTzE5owZ2c=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-441-8T6zItqrNSWVOdew48VHSg-1; Wed, 23 Aug 2023 13:12:45 -0400
X-MC-Unique: 8T6zItqrNSWVOdew48VHSg-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-63d1695e445so72456516d6.2
        for <linux-phy@lists.infradead.org>; Wed, 23 Aug 2023 10:12:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692810764; x=1693415564;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bG2xKU4nKpiOTOC7jJuTobG/6zkTN0J89oQdXZw7UhM=;
        b=AO39ThghqAgD/WZd5oni0RbH3QTxJgMXiHBYsgUqok+74FVT5kJuTvoXdAjf1BJkiZ
         HDZs7r4Ctrsk7Zw8cwtZKbGzsNXmA9c2tTWndcKKcxmQ0QoCo4zE5wSLIh/j1ihdKmcq
         lYp0E8PXRGHdV7TQ2fprdAJuOSoB4+ScpLbrIMBgrRdlcc9PGS6MOrALh3Ur/xau50i5
         xzrfhjSTGkbN8Emdtd0Qe3ePUUin5crVvRXwguOoqEswTyj7k4hvgi3+gVEdB+p2tw1z
         rQwJyahYsmU+S5iLJ8D2ht94WOhP3/flJjtqCQb/W11200Z9KTzTfOkGhKIJRCJ2iSSd
         oLuw==
X-Gm-Message-State: AOJu0Yy29MR2BSwQOGjLi4GMaJeY70tAXdcjkIcmprL4SFn84dVY+TwF
	LTycoJKZvtI1ht2pS+IgqBL2eFUV/6rC8vJKoap7GiQwf1uM/9cBHOrzAurkVdbRxYRVDFapmWG
	gCjIaKOpG65FUICbgONfiAJvqzQ==
X-Received: by 2002:a0c:f444:0:b0:63d:3bea:f663 with SMTP id h4-20020a0cf444000000b0063d3beaf663mr15207952qvm.47.1692810764637;
        Wed, 23 Aug 2023 10:12:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8uCC/0yI3Az36Prqurd1xYXWgO5afBwAhxf8NrFzm+xa3Ccxb/poVMFhz33ZB/0s+TGZVsA==
X-Received: by 2002:a0c:f444:0:b0:63d:3bea:f663 with SMTP id h4-20020a0cf444000000b0063d3beaf663mr15207933qvm.47.1692810764402;
        Wed, 23 Aug 2023 10:12:44 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id x26-20020ae9f81a000000b0076ca9f79e1fsm4056361qkh.46.2023.08.23.10.12.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 10:12:43 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Shazad Hussain <quic_shazhuss@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 0/2] phy: qcom-qmp-usb: fix initialization of PCS_USB
Date: Wed, 23 Aug 2023 13:12:03 -0400
Message-ID: <20230823171208.18382-1-athierry@redhat.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_101438_838235_1D18919D 
X-CRM114-Status: UNSURE (   7.61  )
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

This series attempts at making sure PCS_USB registers are properly
initialized. Please note I don't have access to the qmp phy datasheet and
only reasoned from the code, so I appreciate a double check to make sure
I'm not messing with the registers.

Adrien Thierry (2):
  phy: qcom-qmp-usb: initialize PCS_USB registers
  phy: qcom-qmp-usb: split PCS_USB init table for sc8280xp and sa8775p

 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

-- 
2.41.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
