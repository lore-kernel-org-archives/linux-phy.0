Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EC83C5DF9B
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 13:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXYcfhtkgXVH3BFfUnH4EzysCw0y4ffucXrNlMAHfTI=; b=b04j+lb1163F8h
	EH2iuzpglsRsBS9ZxLrfaIGS5TsqUK+k1LuJuvMdywRydE+no6L5ULTrVFQDTlPs8Rg7fQsERAl8t
	5L2IQSPTailvXrBqjoxY4ocmt4N9ZEAfJVCzFdyuBQbbm3TbA2p80oKDUXkkXry7eLHD0+rHn7A+1
	hfA1jYGfSF95m380u+LrTZh/Z4XhEkkVfFRZeY/1Ek910CH0j1SFYTetKAnQb4E78YDX8e9cq5m1D
	yqKqmRj2yCcWcASJXtQow8QLPCW/QGCJGFy8k+dVUprCZ9KG+8xPYfY/1p+pGAf6saJlsCbxEO9KN
	JXz5Dk6EoMlrdCMCHMuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyUYN-0000000GgU6-3Mus;
	Mon, 24 Aug 2026 13:17:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyUYJ-0000000GgT5-3Eh2
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 13:17:30 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67OCv3YE2854952
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 13:17:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tnp3mVv+VBCQVYi3QP6h/5zemYCms26RoK5XuVNMynM=; b=MyvUv0+uT9xblodW
	inR2ESKXfi2i/MYmnxDGXmaD3+heVXlWTgBUZeHI7tFtAWm7XN4ZI/JR2uMkiP3d
	b0rJRPNuYQrNyonn6A6ZWFyN5/T9MX3s8KV+ct56VBCBA8lBJ7LyDQq1W58W4UDx
	5Shl7HTW3K4NfqUd4iUOj4Z67MPaNRXGPo435us9kTQPybq+T+v2mUVuIhsJlgAa
	ItJcbwMqI1NhkCyFGqDSExToB0D9PzMbgEY/4WvXmSog9Y8Dy1MZ3JWjiB6gffda
	egZ3i3M8yIPotzB2BwPPzwlze2DLNSbWok1s9w50Gfcd+hxUQof7OKNztKnMG7/c
	5bsdnQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8gqn9pes-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 13:17:26 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93495488976so61761485a.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 06:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787577446; x=1788182246; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Tnp3mVv+VBCQVYi3QP6h/5zemYCms26RoK5XuVNMynM=;
        b=PWCvHaMVgEPS3aQzx5e11o1VA+sRNozdmzaQ26nhbvCXZGiG8N8ynzFWcCDRumKjWj
         9MMlDTOT9sxPwKKzGimNxGlNrrNOrOSfIlgROm4GfM/G95hY2X7kdOx4D0qSD7rXyVyT
         qIMGCosICNuTyhozpVXuNVfkomO1rHKM244UheTllqsDgE0ZOIpzBayd1ue7vPiQ+7EQ
         67dNF71MreYK0fTHAJA9jBX5Mnp14eiVnAUKb/4GsZJQmAwfbtFLEHeZJUqMeUr1yIvB
         JhlsiBWWug/uyPZqOKG5Wodufri/qntXCmaAVRKns2wr8hK4VAdy6npLA5sF7EGeSQpT
         tgaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787577446; x=1788182246;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Tnp3mVv+VBCQVYi3QP6h/5zemYCms26RoK5XuVNMynM=;
        b=Q7F+6XxkD91m7IJVFfdQgT3k4tpU0rN80N2g9oOgnK1yn59GUdGTW/4SHQRjZNsCTh
         Vlwi23XPZNJHgH0h2NhdWaM3nlBThgEZ+0bmrndQVRCnpe1XBk6BUOBW9nJd87VNQ9mo
         D/JFQUc1alZgFSi5MU91bFftpP04P5+/8oGGU+dJtv4vdt0Ml7rL5YGiNwLnov/sqIOd
         U/P303xBMgYUcCdAzlmZxFgqjgOKXTspS5qpSquehWVtFrVHYKS8rGXStXTrIsilmxoB
         Mo2roXICoVORLhOc3o2z/9suo0z8LrB/KGs9kEu9YpFefQq1kWwDQFBWjixdKdbk3c3K
         gF+Q==
X-Forwarded-Encrypted: i=1; AHgh+RpZhjMxiaEKG5Y37Tj3L+w5y1mLDZixcGhO9EFdqnrhVK0Jh5pG8C3JXJpmbcMVi9XiXOfwD/dB5N8=@lists.infradead.org
X-Gm-Message-State: AFuF++lkCvB1CXwSBbHcvfRjhsAZRwdBVga0vCZ4JXt200osYO+HQ5g1
	3eXBQHuzExFBFtatVhBCFmG6ZM3uCVMMHF6SJJDE+Zj8fNZxYlWAjL4Jh8M0KDaf4mG1U7Ar9jc
	kvN0xBSZYgdlTShkAbXTO3GelnzzLzyKz/wK7MWd9SRJD+SxTF1HvDuphnvbtkXjhR8gN
X-Gm-Gg: AR+sD12UXda/e/SygPmmsI8Vt1FR3Y96/1kfLLUmzMF9FtwTsOOy6qNNo6xt1TT6X3R
	DPVvWOp6CHg8+sYh1qgup7UXrV0ZC91DAh10erpV58GjVV9AVCuoCs/RHnM5kgDmslpEmKDI79r
	rNpki26+Un65Iz2ztKz6bCpvz4wb/IM4A8yjXbIURD2u9BsYyAVB5e26Ut2Lv89EkGtIv7jtcsK
	jKXfaGWkEgcGcWZKEBgvX+aKcN6+w0CeFOEq6i4LZ1yHm7nPJGUD+KxnLMfOVm113D6uqLlQPzf
	uY9sSsuZdg4fvsjIpwSYMEKYOikPne8eisXaobCiaF5rIath03z3sUpihjMbXXr+MOj2nZsjZ15
	GsoTze6S0VD0tx9JIZdiVYMb0
X-Received: by 2002:a05:620a:2806:b0:92e:6485:f640 with SMTP id af79cd13be357-937395ae7ecmr1681797085a.4.1787577445670;
        Mon, 24 Aug 2026 06:17:25 -0700 (PDT)
X-Received: by 2002:a05:620a:2806:b0:92e:6485:f640 with SMTP id af79cd13be357-937395ae7ecmr1681791585a.4.1787577445186;
        Mon, 24 Aug 2026 06:17:25 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b48ce294a8sm1757332e87.81.2026.08.24.06.17.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2026 06:17:24 -0700 (PDT)
Message-ID: <2b1e73f4-a476-4dc8-83f2-42be1008c1fc@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 15:17:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/msm/dp: clear force_link_train flag when link
 training succeeds
To: Saurabh Anand <saurabh.anand@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <quic_riteshk@quicinc.com>,
        Vishnuvardhan Prodduturi <quic_vproddut@quicinc.com>,
        Mani Chandana Kuntumalla <quic_mkuntuma@quicinc.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
 <20260824-qcom-dp-typec-reconnect-fixes-v1-2-2825e5bf8a96@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260824-qcom-dp-typec-reconnect-fixes-v1-2-2825e5bf8a96@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDExMSBTYWx0ZWRfX2vKxgINaY1Au
 +xJOmhjZubYnrL9B4jX9FbmCSw1kZOwi/Yue6VYyIavy6FKqIpKlpl3EyIizh4btPzaCj+Xnrr9
 fvkIeoE0cS/Fhz/0N+MJ1lbniprME8I=
X-Proofpoint-GUID: ovq_pw3l08C-4pl9DKg7aDVa8uj0_Yqe
X-Authority-Analysis: v=2.4 cv=fqXsol4f c=1 sm=1 tr=0 ts=6a8c4466 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=NP0x2mC5TxarURSXHOEA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDExMSBTYWx0ZWRfX5DfywheRg4FT
 tZ1b5xAWEVUFdoIos29hz2BxFR8SXGDnmp5KTKPWXJTrR8qeBXAsyeRfVh/nxJv/qOMJKuoB2/C
 tCHfrrHAV4PRXbN01V8pej069wSoHlVmMznbrwUNM7fMIhjM4lUmjpjmH1XoZiIOTZEQxYZNzrW
 TtU5SpdED3f1hLfTG4KGzcqsjSoWHs5QkM2znsf85NFz/QjDsSffgrSmXfB66pUf+m83K1d6h6k
 vsbtaW7V1szomIDMq6IrY9GFcDx8lw0Tyb8kCEbaNkfCdym0jrpUrl0gmW9kUqdcHWeV50ER7AX
 8C1nD4XWtK8nW61zftwXC7qJQG8CPXdX7cJp7j/MwhNgX50v7F4i9Phn6EKhjU5XoAeI6ApjVkA
 Ae5uoOB4HUIV4EUba2L7JtXY8BTqx5gbhJhxfJdoiuiBzrRYBog9ZPT+O46qZRqWlV+HFh2V7js
 VkMRqxbVHvu6up3cEgg==
X-Proofpoint-ORIG-GUID: ovq_pw3l08C-4pl9DKg7aDVa8uj0_Yqe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_04,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 spamscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608240111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_061727_932784_23D4F0E1 
X-CRM114-Status: GOOD (  14.78  )
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

On 8/24/26 1:28 PM, Saurabh Anand wrote:
> msm_dp_display_prepare_link() sets force_link_train = true before calling
> msm_dp_ctrl_on_link(). On success the flag was never cleared, so
> msm_dp_ctrl_prepare_stream_on() would unconditionally trigger a second
> link retrain even though the link was already trained.
> 
> Clear force_link_train on the success path so that
> msm_dp_ctrl_prepare_stream_on() only retrains when the channel EQ check
> fails, as intended.
> 
> Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index bc646d172abe..40e19d506a45 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -649,6 +649,8 @@ static int msm_dp_display_prepare_link(struct msm_dp_display_private *dp)
>  		return rc;
>  	}
>  
> +	force_link_train = false;
> +
>  	return msm_dp_ctrl_prepare_stream_on(dp->ctrl, dp->panel, force_link_train);

This makes the argument of this function useless

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
