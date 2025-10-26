Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39D88CCF9E9
	for <linux-phy@archiver.kernel.org>; Sun, 26 Oct 2025 19:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6CCvH3y7ev74itRteyK9WeKh66HdbtbKqdtaj2nogo=; b=pQbC+uRTYtwtKZ
	hsHFwsnomFtwecpgZ3DkgieErPia4zNV51iRJSfbS3S96csIA7DUeEeectbgTtKTVB0FXfeZHQxMO
	1odVQklm5JvdskInSnAFw0YrbKTqNEloxmvB+kU3LQcDJMW3BpTyLqrzZbhBl70GVHE0p4buXZPeW
	IOWAh3HmesCcXB+tnCTFFquj/cDxO/i0GyYPaNs+AJ2HhzvCwtK5AQkZe0GqRVgC2iJrj5u0U/A6E
	kp2ZJKk8P7xsS4xBNXqJlkf0t7DK8XlSmMpX3uttm9stbqDihSpypcu7uY0QTtcp7qUNuL2w7SI4j
	tV0huTN4b/Km3lVbyBRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD5yu-0000000CexG-48Z0;
	Sun, 26 Oct 2025 19:00:44 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD5ys-0000000CewO-2qZK
	for linux-phy@lists.infradead.org;
	Sun, 26 Oct 2025 19:00:43 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-42557c5cedcso2604691f8f.0
        for <linux-phy@lists.infradead.org>; Sun, 26 Oct 2025 12:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761505241; x=1762110041; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SWjeXMPyNxQIW0i9GzAqz+QiU2LzBuikp1Z6CQsw3Bw=;
        b=W46q4W6S3uD5AjJsDdGcUT9k2gzSSCQ8XPTO/KlXCHObMeRh3PpAMipt1m7FtZxZZV
         xyfwqOeqO7phD3Bf8/kVWlNh6Hk8s/0D/3TvjIByrMtadCUIpKD3ny1FwkbIymURnqHb
         FqMdFcT+m5mzVKamrR9GpYHdDsj35UzoS5wwPxpRXFDRtTzU85c66TMbtQLtzu9M8oNb
         MlTCz7XwvzKotU3ah/HM5+a77L/a+cRAU11xxlQ4hi8mfM+ZCPGMY9JP46m7YQMzQD8k
         cDFkNr4M5PewMlsLRZCHNWxaZrL8K3vCybKYEZp3vX5/IHY3xkVqpNTkmJoUTLVUifzB
         29/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761505241; x=1762110041;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SWjeXMPyNxQIW0i9GzAqz+QiU2LzBuikp1Z6CQsw3Bw=;
        b=detgAxIwegrYlOZ/DjTM1hVOzXbZQsLjjEJ482lg2Gm46PnOYzoMSOKMPbTNlW4nP9
         Jclu+Xn9ct2oK9n+BX2nXqfy0oGMW1rOh+KrIjmaFJ0JgWS9fuLhqPGwjlBz/5Mo/bQt
         gnofXCFHgKv93gpQpLgMqQhtse8M6cRToKKxaxnyETE/ZUIMMoQJk+oaCalkEHQfvOcj
         c8LJpLQVpe/d3XHU3bUi7byzj3ZMjo9x6IyJ79qislH+OMI44Tyf/qBqW9y6DgegXzP0
         IrcoaPTNNB5bOBHodN8G33zye8P3D+PlsUnZUVhRAEf/QUa+l4nggw+uotzuMCXR46h8
         PhNA==
X-Forwarded-Encrypted: i=1; AJvYcCWnqJY70tkYg/fMbp5EBTv4+AGA7M+N6a4r//CYPfwMsRybO++aC5FwLWk6yIKy2HoNR3i97BQfHOY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfX6BbEqnUW9QIkKCThCXRX04ngh9YYKK5BTYkQtNu7Sg0BAmd
	hS1a1MgUnkKT7cona49s2vpEx/UDnxWIAO0mv912h70dX156s3Qda/El9I5AQU7PmWs=
X-Gm-Gg: ASbGncvvW6Q2b4Q07Y4FbeYI/go9++h0tPz8Lw3EJUpb6PaQiSezv2+PyTxrx3UEaxb
	m+xBU77uTqQdfmk3kTb/bgFolvgRrGHWIP349uRpi2qaE6kRVlVubCtdAdJBtv8yKhqq0nQ67ie
	8vbw5XLebPWpze3mgrLEY1Ns2ht9vovHug6EuZkB/WvcOTE1EOycV+wJBtpjXwt11+D6oAne2Em
	wIHhVw1a83OiFuv5ebrPY7K7xhy26W5pBvhgF2QQ/XIdGGJVFkdRPa4ldqQXOa2X/tuqq9Yec+G
	xVdDyW/CvF0AKp8DDc0LL96O+kj6obeR6B5ITyAZR3AOwYhzThYHmpndQZBaaC6v+uBgCXpxLVs
	/kdsWzrKCiSI1t6ejCrspySN9IsFkC/LkdkUX7lTcG67+T24Fhx/5GO31mufzgfqwsOmlyDRN
X-Google-Smtp-Source: AGHT+IGZ7N6ulprujb7qEVdOtn0PLcuo5/p4E5IBnLRyLvfZJGqbZIZWqXl4kMRUT8H7LjxiyF7gfQ==
X-Received: by 2002:a05:6000:4909:b0:427:53e:ab25 with SMTP id ffacd0b85a97d-427053ead25mr28534724f8f.49.1761505240687;
        Sun, 26 Oct 2025 12:00:40 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952d5985sm9798883f8f.25.2025.10.26.12.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 12:00:39 -0700 (PDT)
Date: Sun, 26 Oct 2025 21:00:38 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Elson Roy Serrao <quic_eserrao@quicinc.com>
Subject: Re: [PATCH v6 5/8] phy: qualcomm: Update the QMP clamp register for
 V6
Message-ID: <bdxjowtabqvhfskxik75sflqlepf5qpaiuqupfndzwphkxydcy@zjuxh7k6bgqo>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
 <20251024-glymur_usb-v6-5-471fa39ff857@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024-glymur_usb-v6-5-471fa39ff857@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_120042_725283_57CF9D82 
X-CRM114-Status: UNSURE (   6.33  )
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

On 25-10-24 17:47:43, Wesley Cheng wrote:
> QMP combo phy V6 and above use the clamp register from the PCS always on
> (AON) address space.  Update the driver accordingly.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Elson Roy Serrao <quic_eserrao@quicinc.com>
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

 Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
