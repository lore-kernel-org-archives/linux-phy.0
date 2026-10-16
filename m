Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB73FCCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 11:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gv2waUAedKos6DZh8JW0pt+b0ivA+EK2SXGuFnkXHYI=; b=h0YkObq+nkWnKt
	hhpmqZDuvB8KtfKqcoK/BPwpnzVZQh/wMQ7J/z0zFYiFtjS9reHp5uuzLBHLrXLwGATi02uBAxybL
	ABfjMzE1atUUGm/mN1C8fQpNRp8jRdcqzQqJDSIJJ0059oMzRL/Q/7TSQAyct440iCZ9eE2achujl
	rxyZMvY1xep5fYvF8d4SqQ9Qz+43xyfeDP4JSGjnWAUxUi6rduAvXhNTXwPLr0y1jqjRcm/vfwC7L
	oIJRQ4ReXqS78KFLyNBYLeyANvYpYp6gKdPI7QIwqTYXrDfw57PCVLiziqG9IH8CuTDU+mbdlShe+
	EO0n40TqoTgFXoNLWGrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHgBO-00000002llt-0V8s;
	Fri, 16 Oct 2026 11:33:06 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHgBL-00000002llY-2Tzx
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 11:33:04 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-48af4d4e61fso4594620f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 04:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792150381; x=1792755181; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=F+/gdFBwGyd9NF1wNEDnKR1WRHrb87+RISxVG3LG6nc=;
        b=Nn1JhhTsOTow+eJYpnpub58izkq5r/QwYXRexFxFaKzfxN//y+2DiqjFhSaE+b/aa5
         4k17MknRUdTWui2+qJv4nd9oMtSl31tQm8Ml7ZhNjQw1YwxqW5SUY6pZOdBsSMRcdAlP
         oqFbwfoJLS9TYKcK78G/vHEhxmHJA9doN6WkjrQCu8oa01eDqj1t3AS/wSLLymMLztB9
         Q7KQ5Qbj3K3+g+hjkriqDAodG1ea7fovh7yf47uTJD4T3sOcXUi//ouzwZGgjyT0LysJ
         rLtC5XlFJAU5UzFS/iNA+58nqMQp5JAp9K3B1RDCcFkR/lG0KK9fYpHMYzU2egLjBe7h
         Qj1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792150381; x=1792755181;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=F+/gdFBwGyd9NF1wNEDnKR1WRHrb87+RISxVG3LG6nc=;
        b=VkmuZ1tsneNAv3UmQ429Gz12LceHRadoyeJ8JapYxGMR9zNbgP/lTzv8ED7EnAWT20
         cg1BuvW6dtdklTEpQz6d9a7WvdHHXLn5AsPI37QyNQ8eWb3DbeZwIgAEPVXVMvWxNBnw
         dD4aiO6UwFczl28Yk0onz5upUoeNUbqhduscOl8g5C2Rpdk6T52BVFZm2XuL1q5eqwC0
         cq+wEUpVaPKORQBrpH6MLvhkqvUdU3WWz59TieAE910KnhbouV9bVA/WdYF02LxP5an5
         Kc19AfbYJifkgmf1Y/Qf0at4Q56/ubpw6424tIEEko7wBvidM+dywhmRCl0A9M+dF37I
         t5fQ==
X-Forwarded-Encrypted: i=1; AKwUvBwzTmFd4EMF2JqAxLG+smrXziwFZtYGJthGK7hwpyzG0jf1ytdDnUP98BMjjOPYg8VmTBLCBWW6QD8=@lists.infradead.org
X-Gm-Message-State: AFq9FYIp1yKGiXvHKSfS1QTvN1Ab7yFXWXl48wR17Bwqt+wKIm4uCwrk
	FeWO4KIe1KiO2UbKHTbCXh56yk+eCF90thA9gRAnVOs9RR6wUijGXyWu
X-Gm-Gg: AYBFou0rkJxf1229lwK+o5sIUWIhvbw4X4ZpBGP9K+7mHUF+SkMhVv3+AAQU14u5WkX
	Wm6dfwOGeZKe9MboVyvADB68H0mXMy6ho4zMiD/lI9vzk0hHZqR6kdCJjHYqS7p5Sfs3llZvost
	vVNEq80li6YctaHo+Lwbb5viI2z4QmRZDpBgj0YnPC+V2gUZ8kbHO5zk1tWVhs9TdPIiuqR8L9n
	orK5EZn6pnlcPoNOZX8BfNlfcGCHED8O3aZlzc2W2igUyAtzEsafx/B18aKtqu3XfxlR7h/+g1x
	P4ZnCdAiJSX+qewxbjR+hQCekh8N1WRrPsdCtV8+ChIo0QZdoD4WL+EJfuPqTBP3sU3YIr8Ej1W
	FzZkoJZ4vNU0S631fnEilq9JsStlaVTAJMty86/K9Z8pLxKh+nagIxHpmFeBYpw9bZFmokZo+2m
	DlnavzBHzLxk2nUimTkKvqtG7Z50dTw5hCga1la+1ujt+Dgrau+xewvfk98fHwCcBqZQiichGcb
	c48JI4sKafqKL9gzVpZtQqDDtWeMqGB5QoYHc71jFwq+jighXP440EEYhzgF0o8HX9lWFgc
X-Received: by 2002:a05:6000:24c1:b0:48e:6f:19b9 with SMTP id ffacd0b85a97d-48e006f1ademr2357813f8f.23.1792150381293;
        Fri, 16 Oct 2026 04:33:01 -0700 (PDT)
Received: from SP11X1e.cable.virginm.net (cpc99340-croy26-2-0-cust244.19-2.cable.virginm.net. [80.193.62.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd47104csm5057285f8f.8.2026.10.16.04.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 04:33:00 -0700 (PDT)
From: George Neacsu <geocausa@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	David Heidelberg <david@ixit.cz>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
	Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
	Suresh Vankadara <svankada@qti.qualcomm.com>,
	tjose@qti.qualcomm.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v2 0/4] phy: qcom-mipi-csi2: C-PHY for X1E80100
Date: Fri, 16 Oct 2026 12:32:59 +0100
Message-ID: <20261016113259.40819-1-geocausa@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <b96649d9-5c1c-4fc0-a77d-d0076cf80b86@kernel.org>
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com> <b96649d9-5c1c-4fc0-a77d-d0076cf80b86@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_043303_648687_F684684E 
X-CRM114-Status: GOOD (  11.25  )
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

Hi Bryan,

On 16/10/2026 12:02, Bryan O'Donoghue wrote:
> Small point of order here - this is not really @ RFC status.

Understood, v3 drops the RFC prefix.

>> The kernel was 7.1.5, with linux-next's CAMSS and CSI2 PHY built as
>> modules; the test build needed shims only for API differences.
>
> What's this ?
>
> "It builds" I can verify myself, "it works" is the thing. Just slow down
> and get something you can test on hardware.

Fair point. The frames in the cover letter were captured on the
hardware, but the kernel underneath was the 7.1.5 one this machine runs
day to day, with linux-next's CAMSS and CSI2 PHY sources built as modules
for it. That is not the same as running linux-next. Before v3 I will
boot an actual linux-next kernel on the Surface Pro 11, retest both
cameras there, and say exactly what was run.

For 4/4 I will also move the fsleep() change into its own patch with the
reasoning, and put the lanes_enable() decomposition in a precursor
patch, as you asked. Thanks for the reviews of 2/4 and 3/4.

Thanks,
George

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
