Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB723D232FC
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 09:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZBUnFyNL8n3PA5gtSYzvyH3tKmU2/3WtXlLGioYbwQ=; b=h/sgMfZb9Gsw9i
	rzO//PccCKqLomwhx4TqmJ38sDdfl77RRj7khxRHOYVTKCbnSr3NFuet2dZ0KGCoAIjO/k5ZKcByp
	GhRrX+HGP06wIPyvfqDBeRCuGFT0dvlMQoBspcz/G8E304GCKaznzdH4kjvbYNVql7cao+3B09g92
	aJhbvnF0fV1SucrYY4rWIxIPucEr6KUNtACRFVsCugSdb3qohdt1g+rUEGlsqdW3l1u3RulpjNvfT
	CVNBow7VOkCrZiSZActvl5Wv+u4e24s3xRFOqrasehL1xPoaHSPoQS7Xq9wiUhorerJ4zmuDd8FFZ
	u3itEpMUi0qSEik8awrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve8iw-000000020bd-1qHc;
	Fri, 09 Jan 2026 09:24:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve8iv-000000020aw-0CeD
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 09:24:02 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6095mHrl3019005
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 09:24:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AK7IfBbhpAzWs+eHOyk9nbdk
	oxstTFGESPbDQTci1eQ=; b=N+v8eGrYFoV8mMt7Uo4yB1DAl0wGgGHgITi+CBuC
	PHqyQXIZlJTMfOGD0Z4fEJh8cjZ6qavhmeT3zCaKb1qRCyzg93OIvQWZy4wTvC1i
	5UFU58SqgmuS86tas/0ARoVxfszlKgh+/0vYYIkApILP3NxL9OuA67Wz1XxyWixg
	r6yhEUTfCnHn5zKXuFcf5nSCd0oMRczJ1aa+ioQ/ifzIXarzaUT4llL9oyLGg6+X
	uZkZbI+imxfzJCxbT6nwm8mdp9I6PxIODkGT+i2dhGl4VZTZQVJjVvVnefI3S7nz
	C0kiYznU7SRt+xoaZxE0sB8RM5RZn8nLkMDlaf8qk9RtHA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjjk3j4rt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 09:24:00 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b6a9c80038so443727585a.2
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 01:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767950639; x=1768555439; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AK7IfBbhpAzWs+eHOyk9nbdkoxstTFGESPbDQTci1eQ=;
        b=aA9UPDh2QopU9NW8/p7+uXIkH7BOYGK9o9+obumr9c4BrYr8/wBTeZw9NrdYpzq0Eg
         DzxXXEZ0nM2SGdjfNzWElzxEqGUOd7RyGKnVnieIAgK5OgIs55fdZVBOrGEZ5Yffjix8
         gJpniz1fzF9ZXlGX92lmetYRcufVcUHPn6WwVWJmKS6pq4yVjge3RlwfeP7RXKelevoC
         T4FqOYg6LiGAg+DBndMZ/ChWZwZQltzXMzw0LNtUmEQOhh7nHrbHPuc4shwqM9NWF6jg
         K/bzjoaYeUL2WDG7xZcLvWckPFJj9gAV7ZxQI9DcbljijQekeZpcJSZ28jy68sUsj5x4
         V2Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767950639; x=1768555439;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AK7IfBbhpAzWs+eHOyk9nbdkoxstTFGESPbDQTci1eQ=;
        b=HypmNS6SukJAuMIOfg0fOfzmgXoHtGGmYFHKQ5vKcGEFZrYiKJLQq1fZ51dWgFv/xB
         tLRa9siZ/vn5fuDTOG8sq119u3sxceibTWzzjjiMV33R0npztgVaVD1JnrEeITSfIV0f
         lq2ByPh03p2zLV1RUXApWFxYymsvyWNtU7gRRlA0eyWV38rrfNG/gjGApOWgyVmS9Vo3
         +TpeNeF3ToqwrxRl3GEIwpzS1R+32shMQmNDZkqQxn69Fb3O1cQCAR21MdoV0AtGPnu9
         cxr9NM7HSQHRcHmGVciXS2gLy3E7FL0wQFR8/yhG4913xC8xh151hcUY+wTNYZYptZnZ
         3EZA==
X-Forwarded-Encrypted: i=1; AJvYcCWi8RgHPGVybPTYAYlAQBvo0601MU9Fxwrfy7Zn8pNIU1SdDvShMNUpvujNGR4bEWEMYslIDSeGqyk=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywh4jbAWvg77/+MFeQoPKQjaaj6duZR240R0rWcN8H5kfeiRcdz
	slJz8G1I3ctrYlRhr4bU5mLaMW/cNirGNFS1viDPKuLMmg6Z+4KIPvJvM3MzE2dVpej7NGWDBHQ
	2TaRABjALsG/wr/FWR/GFzyyrvVzNrWgdGrrhQzkTWaD4CgyhLbcSVID5a+yL/pkfZhCpd1Z2uj
	W1
X-Gm-Gg: AY/fxX6F4jtlxZRfLTVactgpcswKQExFb9onddc+WFl1zRWjwr5PN6DI8751Y1Vnb/G
	JkSu2xcsUBujH0qDzAGRgSPHmRIGjNkDpQG7VBxsWwCl7FquSQc8ETe/s7Zg9HkZKtaXJ3pm5KD
	jMpJW5gaqF242NAovCNJNEZ3HRrWt1S8WlolyP0GJcPxb1W7uMEa121Rtcy5to14S0gy0TBWI0+
	f5yWANssEqzlNykLwPkQmU4o/+55CUGWVBV6Mw27CsnqMTm8N74MOHfmbdSqkcSJSxvnbvDB5Lw
	d/8nyUkd2jXs/hoEmDBAb1orNusrx4bB89k2V/Dw9JuYwSmGe1/+G8iyd0dsuJ3ybCiqvhNmZT3
	fqLfiMF0i9mXE53WBHoec
X-Received: by 2002:a05:620a:198d:b0:8b4:3ea8:b30e with SMTP id af79cd13be357-8c3893cda6cmr1078784885a.46.1767950638895;
        Fri, 09 Jan 2026 01:23:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEI6OfjXanWsxM7KLDg+XebpsV+j+FmvT2Ummhbd0A4KFExItoyKxVQs4mq/YkCKrr3eclWBA==
X-Received: by 2002:a05:620a:198d:b0:8b4:3ea8:b30e with SMTP id af79cd13be357-8c3893cda6cmr1078782185a.46.1767950638315;
        Fri, 09 Jan 2026 01:23:58 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.10])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f68f4ddsm205549655e9.2.2026.01.09.01.23.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 01:23:57 -0800 (PST)
Date: Fri, 9 Jan 2026 11:23:56 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Val Packett <val@packett.cool>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: edp: Fix NULL pointer dereference for phy v6
 (x1e80100)
Message-ID: <mpsleuqskx4lostvat4gz5jdd6onyqvgvfx2zkwhfqwf7yr6l5@yjyvqpssemka>
References: <20260109045214.5983-1-val@packett.cool>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109045214.5983-1-val@packett.cool>
X-Proofpoint-ORIG-GUID: OJ7trKILeetFPVXcMZnFHHXXS6eh8isL
X-Authority-Analysis: v=2.4 cv=EazFgfmC c=1 sm=1 tr=0 ts=6960c930 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=hZ5Vz02otkLiOpJ15TJmsQ==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Igzy4eZRXihRzIpaGPgA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: OJ7trKILeetFPVXcMZnFHHXXS6eh8isL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA2NSBTYWx0ZWRfXyc8kun+OAlKg
 gndmizD4EizDhCyrkIUt/Kx4f4zztpOzfHIHYjARFo4qzZDb+Gki2bTpF/LE7zKLye2W8FeshNT
 RZK+iOptd/A16QzuT0H8jC/zAOsdk7HYbQJF7eHTtz0z0L+8KPy5BvjJYOqNNJT65Ek+nLxSwrn
 X/Eujwf6rbR4DE5N5PUpxZ2NYjF21OXqYGnMdUz4fn33iL2BJI8XmRGJjXC4PngXhIHYxa1OIzV
 xKdNawsONkfWKn3nHtRlLUlCR3ew9YkCMTeFvDoKWXTxr7n9hn9VIcYOrpAncZ53XY1p3HWfig/
 ZQw9H/waerFK9iFdBdIZCVgDXbnKvC99bS6zBC9GcRS35cJp58BJmU1+k/xwRmhaOZTSeVARZul
 yEzhln7F5Bk02mckwRM49T3i06/E+phsxNtJEjZk/cNqfZS1sOCXyqwffMnJwohzxJTbQkqCPnv
 gEEiUmvmdadyDSQTs+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_012401_092837_35D01BE1 
X-CRM114-Status: UNSURE (   9.79  )
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

On 26-01-09 01:50:28, Val Packett wrote:
> For Glymur SoC support, the com_clk_fwd_cfg callback was added, and a
> stub implementation was added for the v4 of the hardware. However it
> was omitted for the v6, causing a NULL pointer dereference oops on
> Hamoa/Purwa (X1E/X1P) SoC devices. Fix by adding the appropriate stub.
> 
> Fixes: add66a6673bc ("phy: qcom: edp: Add Glymur platform support")
> Signed-off-by: Val Packett <val@packett.cool>

Thanks for catching this.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
