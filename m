Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E341606D81E
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 09:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=F/9KLfCC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=C88IFEOp;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=i73HZT3a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=VDIypmCHN3I6VEoJkhjQPNMlKtgxSWVDehIWy8/e7x0=; b=F/9KLfCCi2R8nflbl1uQvx/4Dx
	x0FdyclfRRX1YMM3AteJLiHA/hwdoaelSJcmz/EVEKuqOZbVKah8ipf9huo3rbjrNhepUsSsv+VOK
	5t0gFZWCff9dPF7rqDIvzSWzawDWXuurdhRCCMFZDchBXI4ak3rsx0WN8K2nTY7/RDcLbQ5dwTXNV
	6p/C1XbnbEDYhn2iV5jUqnU4O1COVgJF5kJCvfCcXHp+zAgZQOhcpz5yVOlf+WwDm03emOJ7UZ+cO
	d9x9vcP47s7d7Jn/zdqzimruBHtWKi46KSdoOHQUsXYgBqtfuPR/04fQtin0Bq9pIdvUE3oYE+4R1
	+snimQew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBGy-00000001rOr-44be;
	Tue, 03 Nov 2026 09:57:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBGw-00000001rNy-3Gl0
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 09:57:43 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A37rh9p1431440
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 09:57:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vykUFpmUN94FUZNYd6DC6+nP
	EP/pk2/rhE9WhU1TWoU=; b=C88IFEOp4a+5FrSX4DOuIqAicz7UrZV+Mj9I9oyZ
	UWq7pYdYLu4khws/bokefYL9kiV9OUXO887kdlrQigsSFY05V8xaB70Txzrl88pr
	JJ1888e7oxFrADiI5joiW3xNwY1wPHKVhvjExyXANzLy1bPm+TCW1PiCbVZShhoU
	bLsEWzc33E86E1+1w7ELnE19+O7l1kgZvMSS1mSOIa4Exl7H4wQlSPB41H+uqe51
	xKrWCwWH9IxEJCp04r6dA3MKHz/yYx2PooQmyVTWlS3hDnH7rZ5mjjvwmFlbSrBh
	tEagi5xCVvdHhCAVU9GYcqIvVHeuTTp8sEsfpzrVEdHp4w==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq08734m2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 09:57:41 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-7d06f3784e2so980771137.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 01:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793699861; x=1794304661; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vykUFpmUN94FUZNYd6DC6+nPEP/pk2/rhE9WhU1TWoU=;
        b=i73HZT3aUt6pKEC72tybyWRIhIaZNIDFaOY3FFFT8MmoTX+ybpOMX+5Ie+WTK+hr6i
         V39K9Bm6FBeJCNMmp/6oBh5RWp2Q15zY7IwpjjCejRdAqnM6Mq4TUDhzm0c9ltgt0PXF
         w9LH0IB9KL2f9vBcvfQgWWMX2OeER+GHVMg6JlQUBkfcZZ7HKMajUzrZPvjt+YqMB/N5
         CNdGdcRcIoLIaHcaWkqs5Bkh+/Ax0irqRsxmYWBvqXcrb3EhqeKoqDt6YAmj8nzsd365
         nNXRU3GXv3l5Ly2uuF/Bnv0v3gcfSezHAVO50PhDbgjB7QU/oHJgN85CDM3uxoFygiZl
         2c1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793699861; x=1794304661;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vykUFpmUN94FUZNYd6DC6+nPEP/pk2/rhE9WhU1TWoU=;
        b=xlNZRUQueOzsDp+EUHiMK1qeypu82RWqaWZGRRYwLey5oJZ4atEYAMFt458lDns1KG
         PlPoUCzTwpM/W96OUsU/1mVtWFwkKOVRkdpBlnZJXS0dB5byOp3v/yuhW2S3kV693H0W
         TXTDBOT4AmBRXA0DK+qyNPKW4Zc9jq+19pzWd1lbdFwdbcGv6s4dT2L4E/l+4ock8cl0
         suvEhsggUFi15U4UZ/8opaNAcAte3NnNanOvdGTGxnXrGOWCx1g0JoZQOR83s7N4t3RO
         XJqKWWXgcRb2Ya4zqZPuYQRZHHi+sToQeUJP4i9e+13s/izv/+QXw3SNczRBR8XsgqaP
         LDQg==
X-Forwarded-Encrypted: i=1; AKwUvByaOGWupb9ITibbC5kOhaydOE944YBSDOASzjXVvbY6TDhyYwnQfqrDe0DZQ7vI0lIovUN5veN0k40=@lists.infradead.org
X-Gm-Message-State: APuU4Z/La6Kh002njUZuhmfBkvMKy1v5aOOo1Y3aSd3fQmKdeE0CpEQ9
	0JACXSQFH3hjU+Ih7YFl3aoQXyeu9REJAfTYb6Q2kBahzn+3fsG9p7V9+BosAVOBlAzHaeMuIoC
	W/1yESBAYIuhfi41170uRi4butXPVoE/OEvSrid0H1QB83nK0p09vvQNel0pL51SDOEIS
X-Gm-Gg: AYBFou16z7YVkYcJPzw5nWpIMKULxbjn7EoMJDzeiu/tofO2uOA6uIf4XB6+S5aYF/+
	pSldwQN/QD5VsAspNBo37JxCfNAGSnNaOyYte8lLKqH5lRa3ivzITdcjv/jZkA3PmfrxjdJjyzD
	m+fdreo0DEfyXgd7T4NvDU5KDuVaSmhp45Qr6PFOFntZecw9JtQqxXFVgCbVvaOHuDmtndXb3vQ
	t4Fot6D7ufKqmpev0rXwjllaztEUzSBHgrHarHuOUF98SHWt4J7g71uEKHmqngCWnunRyM1zyF9
	3yfGvlVx5OJUXdky5guUrQ9jSsAHunD5LI49JRosc7/cE3oMl25ahSaDk0yrZ+Wr6LS957XSdeZ
	YgyINOZ7F9ErxeHulVtOYqAKDJyxN4aMz/pDCx+om9HCvkB9OomLKbLXTOKrJr5g=
X-Received: by 2002:a05:6102:809e:b0:7cc:2152:4f95 with SMTP id ada2fe7eead31-7d0727b11f1mr4320215137.3.1793699860670;
        Tue, 03 Nov 2026 01:57:40 -0800 (PST)
X-Received: by 2002:a05:6102:809e:b0:7cc:2152:4f95 with SMTP id ada2fe7eead31-7d0727b11f1mr4320205137.3.1793699860044;
        Tue, 03 Nov 2026 01:57:40 -0800 (PST)
Received: from oss.qualcomm.com ([188.27.161.77])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b789c6sm25721554f8f.26.2026.11.03.01.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 01:57:39 -0800 (PST)
Date: Tue, 3 Nov 2026 11:57:38 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] phy: qcom: qmp-combo: Use V6 offsets for PCS-AON
 clamps
Message-ID: <3a2mxqg7u2cf2d7yqrnd6n2pkloqbmrz5h2i27haplnhb2m7j6@lulsw7nw3ojf>
References: <20261102-topic-qmp_aon_clamp-v1-0-141c2cb6cdf6@oss.qualcomm.com>
 <20261102-topic-qmp_aon_clamp-v1-3-141c2cb6cdf6@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261102-topic-qmp_aon_clamp-v1-3-141c2cb6cdf6@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDAzOSBTYWx0ZWRfXwcLtzfkq2Zf1
 uQbY9/hO7t3iOQTOWiOOes3DD54uQkA7YRyLEHx8fT/PAZo8dNfNtqyVIm8WIeQ7AZWJFIRba++
 Jk8LuvnjqtmnYMgshzEQ50YJOQtTGAM=
X-Authority-Analysis: v=2.4 cv=K9m3jCWI c=1 sm=1 tr=0 ts=6ae9b015 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=asF+/XNaGoxFafzDDLC1GQ==:17
 a=kj9zAlcOel0A:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=SJ-188YyucC4oMBaDWIA:9 a=CjuIK1q_8ugA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDAzOSBTYWx0ZWRfX6X7WEryl9qnp
 UbhWRTU244ed9XTIkTBocs16h0VEZlV5X4pkEfRw8oxAXr72PZYTKYprSEa6dGYlMOaA2uxsxpB
 F4exP7lgJjzDna2r6zzJNZGMCfrLnBHerNWC3M0aG1yd3h/6hzEAWnSvd7IhC7zwE2CVdpeDq7v
 TW6QVKMAjbcJ1d0ulDy0hN4oV6CXil4mnzhVBApow5PvnGiB7ZF2W15IJQPmCg7o9jjh7ojAJIM
 d55R4YAL06T0VfgPwcfH+MjaNilJ0jxPiYr8BU5XlrHXFK5qnMuFVL/NWFVkhexGhkn+dbjWDXP
 /7HsbHDDL6lm5Fhfk/vhqC+gxyIpjZfSZ0rlp0stSd5uOgg1XoyYlWgVpJ9KYHYhfMgPtZYppl0
 FdFxQ0v+cJv8Jh7OsvUTdhj0/32Q7YctsCZiGqFzKoxxJ7bd5sEU4BFigBG7tnkd79ht0g0QE09
 G3/qrq0MTqQBnIiK9hg==
X-Proofpoint-ORIG-GUID: MBEIZdwjzPwCYMWpWl9hRl5_pyiogeh_
X-Proofpoint-GUID: MBEIZdwjzPwCYMWpWl9hRl5_pyiogeh_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_01,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 malwarescore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611030039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_015742_929959_C3BF3657 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-11-02 14:59:34, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> These V6 combo PHYs were configured with the V3 resource-offset table,
> which omits their PCS-AON window. Autonomous-mode suspend therefore
> cannot reach the HPG-required clamp register.
> 
> Select the existing V6 offsets for SAR2130P, SM8475, SM8550, and
> SM8650.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
