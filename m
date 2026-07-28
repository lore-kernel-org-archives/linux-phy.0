Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F919C54EFC
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 08:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXuqDUZvRq66KQQFY9sr3m5pFnxpo+CDCptnSqytcK0=; b=5EYwOGWhZzn4aw
	S7IwYIUOHxp8+6Uj9JbbWih12jq4v6WfCKKcKN/XZWN+/LKugk39PH9JzG8zBNpfP3cqHE+Xz/rMF
	DSI8aIapMmHH0xXFBhvCXgUAi+M4ONfVP8VOYclj/FtZMoCOuFQB2EJbceiPxndq8C8L1arWDLSCF
	o68IZbUEmrci57/6FKqJzPLXmjRmJ7CnE4bbYonLd9NdzrKo9EpMbAErOvvF5FwHLSZ6Mn3iegUTn
	aL/6RdnEs3I/WwzsQtQRlCPxe5eN6atlaIczeDRsviA1sZ4yNL8AjFnVs0+ZDwMG/1UTt69HPG0WW
	EZmpLpn+KksRp2J1iMNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wodBz-00000004iS7-2r1x;
	Tue, 28 Jul 2026 08:29:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wodBx-00000004iRf-0x26
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 08:29:38 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66S82GtT1908923
	for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 08:29:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R2Pv0cYpa+ZdimG5xfKaE+l+opYj9jlb4TY2HLV956Q=; b=eyRPv+WBS8MsxXlS
	sPSEooGnlRU2pHr3zW0IizW+Sx4p8oeOpPQbAWfOzAh4YtFulZ04KffU4I0iK/zL
	ffmOOwng/ml+tT/B56SKaczSWw7q68lAMRsTP5jPl0KgwB7cfaKmDOjtklLmB3CB
	JBqku19AntNjHXLFLj3txfg2iGnJL8VzKLjfNfdWaZhlLqvtsPZGqG+0jNbFsDIM
	/LxhwiKUtnCm5/lz/sfO5I4b+QG3TEjV0Y1zRocdZGufgIBnTv7+DuFCFF9XSPuP
	0rb7zA5yGkmtGOv42lf5qoRxBnrrUBGaGjGC1aeH82n/zOKHYyB4IHSqtgdQFai2
	6ZdoAg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fpbp8bbb4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 08:29:36 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8f21e4e8b66so9210126d6.3
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 01:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785227376; x=1785832176; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=R2Pv0cYpa+ZdimG5xfKaE+l+opYj9jlb4TY2HLV956Q=;
        b=ROc9+rlvNlyIdMxvAWHlwDeu0UaT1lQKPE4MeHV/GNNPd2s1SNA2p8EIdhYgPc+eKZ
         299jthaUue1/FQyb1rZ0tFiA8UOIFWRwhgdR0a+5JP6ytl8M5U+FfIeCqAYMCkK5S5Wo
         l+zRdL77lBu2Ort928x0kZu8rKlSCtlkStxKid7LMJuNZffbCoQjHz61i3obG/H1O8T0
         62pXemqVytLlBqGqpBECAc1M143hCMrmfbzLW6xvGa3UeJrHvGS7iKr2QjyW262wWPPP
         3Pdp7+g0EKfYPfj6KQTw7v7vu38gTl1O09USG4Vs1H7CPTHkBEmfSz0fKxhLKLKUyiuN
         dxWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785227376; x=1785832176;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=R2Pv0cYpa+ZdimG5xfKaE+l+opYj9jlb4TY2HLV956Q=;
        b=NB77u47+SnVcjuE7ZdJPJyyurLVDUcjrR1fxvWPWle0RAeRfk2dy8FnKrFbhAatTZE
         Io1ezlBrxk/PJvppSaiPRteos7cpkNvqXaAAlKN7Q0MGUNC1gZ4UXySqrfaTTHwS2NqV
         cj4NJXTQX3A0QP+DOS5YtDI8wIaoHCpSlBODmK10IpVzxiPTPzO6n5gcrueP78d3RdHY
         r+Fj6RQGOjYbUsu411hGSpAc8g65yzsVrD7f4yLLJGiC/PoK6TNbXI3j/viszLhoE+bY
         7R3FW7GgwPSPeBYW6Ar6MZGOTKk6mgueHkcR/3RvifVDgiWxwFywSRBr6qz4B4j3bUzv
         aJGw==
X-Forwarded-Encrypted: i=1; AHgh+Rp+B9SLdab16Ua6l54/U64QPa1EGg31xs41MgKEmoKxXmi3hKwTQ4CI2qnCaKjmSqHC66a8oY/pkwQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDnXc3Nhi65kxMQRibnMABJ4AaiXtZuOUX5DdbjrTL+4TrSwuL
	evUFnDO1uV9muiBF+YLolwyv1j3GSrYEI5Qrk9eztFEPqoVhT5SNnwxKSZ7DdI5kNJ1hOXzYWa4
	w4hPq1nl+DBugWmYEajXFnX/7OjB/B78QkiM3ieT1fcjJcnSDDr1BicRZdG/D5Y6Vz3E7
X-Gm-Gg: AR+sD11xym86EktOb0Q4KtMQhnVl6qbl1DZKmWAxdKR6ijftBlhHT5OCJLMM8pOtEbS
	6RXgL4KehRlDoiHrPnK9QuJAj/9zHFCd96+TsV1QQW0D23C41eY2g19S3UM8Wm+1K9KGU/Lkfn2
	YsOEhbhPtHDwzMh3v960n1dda9oAKyXf+qOSUP500VLzV5PpaXF2kdIKOYbtq9VH8823vMPPe/H
	fbvzSH+w/hxqSXcRMH3MlbLOtp0wXoP6t8pUR16R2XT1jLb6weGsujXOsuoHM9G7XVq3XK74Tbe
	ZV+qMIoLpMlxMO4OdP21X0kgPTnQStIGwJzyeNDdpHxh1RnRTOKBU38c/22qXa16CAbx6qnp49V
	VhS3oMC60J1xhxsdK58ilk7DY
X-Received: by 2002:a05:6214:4801:b0:8ef:6fe8:f3e with SMTP id 6a1803df08f44-9081755f3f5mr11138776d6.9.1785227375862;
        Tue, 28 Jul 2026 01:29:35 -0700 (PDT)
X-Received: by 2002:a05:6214:4801:b0:8ef:6fe8:f3e with SMTP id 6a1803df08f44-9081755f3f5mr11138196d6.9.1785227374366;
        Tue, 28 Jul 2026 01:29:34 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69fb584459asm3326128a12.24.2026.07.28.01.29.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2026 01:29:33 -0700 (PDT)
Message-ID: <0bae233a-11c3-4bb4-8e88-c7ad84a8035f@oss.qualcomm.com>
Date: Tue, 28 Jul 2026 10:29:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-qmp: qserdes-com: drop duplicate v8 DP headers
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20260722-qmp-drop-duplicate-v8-v1-1-795eb7de0322@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260722-qmp-drop-duplicate-v8-v1-1-795eb7de0322@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI4MDA3MiBTYWx0ZWRfX+9lEvIAHGOBn
 77eK5ewhHkiI4uWw/7wVvBu8AVy2TzgOXgC1myxC5XHSSJ3le/3aAhWuT1Op3JWINLiOJWD8ZGB
 OpOVav2BlbkoJGHn6fAuzOWDivFModU=
X-Proofpoint-GUID: tltEWnXWoHZe2mo4xuSpgqUJJVobxKJ8
X-Proofpoint-ORIG-GUID: tltEWnXWoHZe2mo4xuSpgqUJJVobxKJ8
X-Authority-Analysis: v=2.4 cv=KLJqylFo c=1 sm=1 tr=0 ts=6a686870 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=bnj_P2jiaM4SVWFz6EcA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI4MDA3MiBTYWx0ZWRfX0fKEP7h/ktjt
 45lLM6GNglKs05KxJ9RHrro5kx3VqUfStwbPdYUd17WQfa4lV+ECbl5IfnDuGUEEuvkGW8A7qg8
 y1k3ltDB06gQkgkJpJ3cnTL/8NlSoiMfizLJv14UlmgDLQT8b0wQk+C/E4mEnqQuGN1f3+/fagF
 1sXVNhucY09PQftqZEAsV92fimlM6KBaSfLCnCQIk/et5f+CxVGdt2cV4uFYpYfL02m3pc+ML6M
 BMz13T+VzEPGXs3td124Lurq12nx4bY7G31LzwK0LGRRnZaWNhCP1pH191Jx6tAR9U5dCl9Jsri
 HnShAhAyztN7rllds4HwNfN1JlTr219R7lyg8PA6yCNj0W2NF+ULfnu66O9C7wr0NtX/FyqkfAh
 1bEYSsNsbDvthdZmRNjLreoGxBiuzgOUCa8b9+AXbvmg8kkj737YjBg9mm8upKuVQLvoVlhxZli
 Kw7+3oDqICdHSLeMPiw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-28_02,2026-07-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607280072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_012937_281997_74C43FE5 
X-CRM114-Status: UNSURE (   9.29  )
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

On 7/22/26 12:34 PM, Dmitry Baryshkov wrote:
> Commit 212cdedcac11 ("phy: qcom-qmp: qserdes-com: Add v8
> DP-specific qserdes register offsets") and commit d10736db98d2 ("phy:
> qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
> added identical header files for DisplayPort-specific registers on V8
> PHYs, having different names. Get rid of one of the copies, reverting
> commit d10736db98d2 ("phy: qualcomm: qmp-combo: Add DP offsets and
> settings for Glymur platforms")
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
