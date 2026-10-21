Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9530A606A323
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 07:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zOJKkGQG;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Wm5M0Q44;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=R35PhAJl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEFpUFHNJyAZ1yNk6VuweCkNBrkiReO4LpWUkarJuuU=; b=zOJKkGQGaXhkZs
	BqnujfYuYAc2Q02sD+u1p8tKmHJNj3HMJd52K16xvTrBSbbX49+1z2FRiXXEQraIJlpvNQOU37aq+
	hm/1A9Z2mWBeUa4Zd+HtUhNeLiCEz6QTS9JfDrUhJGtYNXcyGA9h6CIMs1cSZH+UFLvu5VOLPt8af
	kbemHWxBba0Z2Ibxc1NtI5FyfWg5K/T86awUxtTfrK+jC94P6muEHhdS3olRfIiBrudkw31KHh/7X
	jift7SV5B66HpwhCsZgfeLz7p3LoqQUCLT7gvm6C+Zv0UUxnIR9PyXQaO2VbNLmJW0jpr42FQ0KuO
	wl6Dmd+uN1oghEHVpyjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJQtH-0000000BGMR-1HJG;
	Wed, 21 Oct 2026 07:37:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJQtE-0000000BGM6-3FNn
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 07:37:38 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69L5j0cd165027
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 07:37:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IvqT98wDmocdUnGZAEXuzIT0GLnL8jYaBKXiUR6/WbE=; b=Wm5M0Q44optcaZT0
	/i+YyoPHVydnXjvQR3qcZYpbWq7gi4bnFCAPsXtg6FRAc0rCGIN3yuWe07FRLGDv
	NQyqLLOjcG6XvXnnqBUfvhcbVzcGNqgLg+S1n50J4/WRPSTkeMP4paJA/EARMjXo
	G6FaI35xCFy0Ia7/1gc9PZcenicHCNMGaxFilD3skvKyOMBZMivbua4K9njzIO+r
	6yls5z9Z+93DMRvvJyyc0V9MSG2XhQxdwDZWycSjK92vjtnfXFuj8piJL0+VKUn3
	0i74p8nQJ8X1cq5WoLNebfHfcUSzk2BzAC5SWW0pPh/IZ5QIfHnrHHQPBL+yPyBy
	3Nla1w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hegs01sqp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 07:37:34 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-53664911d46so15991641cf.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 00:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792568254; x=1793173054; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=IvqT98wDmocdUnGZAEXuzIT0GLnL8jYaBKXiUR6/WbE=;
        b=R35PhAJlNmtofc3XtrHAzlxqu7HA4AgCQQ0H96iRFExlurwSBgNaeu1s/E63nvfAfS
         GXXHTc46zdx4VaQ6iuzZxGDeWjaNtA9Sk5zh3gxd9j6IMpjsiSYXQ1Tq6Tkp/v8KTAa/
         0IHEslUeTP8EUeUnl/xkuvKkLZiwC4PYMCnhLJ69Tko2j/es8vlVihY6rJAy23W4dm7j
         PNiVI92el+vegrjW9aoGwcWGUBlTyK6/6uOjK/ifzyC+59Is+zdSexawcrkng9Bctbt9
         NsCTWW81LidT7M+td2qSQSl8vqKHsU+YNxznI7TDUGMXBRrkXsCiELaytoLqLpo+lmkV
         3BvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792568254; x=1793173054;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IvqT98wDmocdUnGZAEXuzIT0GLnL8jYaBKXiUR6/WbE=;
        b=w/9R3HSCGvZ35R5WDSP6PNs0c6bePpIdXYmyYHdd3w0WK2wLyRL089FuvWXpMWhkUH
         c0USGrINgG3sjyyljRwahEqS/Ct3zU3cD+RijHj3tfQQ8BndYBCEAx32O+UV9LYpZmhB
         5t8yjnyYao7KQ+Ddyw+ugKlco9rjEOhUX39XVD9ysgR7OWevQvEBBm0jjN7cjfdiflfs
         Sk9BK1LAFoR+46xg8D1jzOlH00sBXSGHXvX2gk/sq3IqyTutrUdGcDryzMmZ90RjcxB6
         Tx7PXQf+O3mEiL48ej1j8hhO5DRiL3UE0Lh8fkQacAFOmJL3MbOwFwK9wEv0TU9zr2lc
         LQ6g==
X-Gm-Message-State: AFq9FYIfecGLYaDDIkrluJ46bL08Iy3EMVXUUT/AUwUsdtBfIh7Q7IOv
	hB2mdDucG3mFfodpt4VD0VzItAY+nJFYtIPFt40P4iZAl4HSc0C9eQjntEhEXOKY6qVEyGdkPMH
	AgsrR/OzzjhTPnx0TubxKdfEPteWWEFq/W+OXzHt0S1FFO/IoBTDCNCMq1p0EuLTcWd0W
X-Gm-Gg: AYBFou2hBVaNsJWaWhvDwraz0nq5m22Gx7GJSneEMNpFOyDHZKG5VRdvWaUALwouQil
	6IhSGI99WFbNHUEsi6R2GBk68GEzrHexfDiM/iOqu6nrWk6ys4/Qkg5lwYspcdBuqMjuHRSRQhj
	7vnvljDWE0PcNLhzC0lX/njyy6fm0fRJClc9eh0QIvFBSauUg/VDVEXE/vr/IyqQlxf8gx7zBo3
	03ixe3O8F5kC+J3VkLYy0332wl6xkiD58kBHP1kiYFb8VfS7e6jiZ84FjLRO5/bLyB/KG/B5ZRA
	rudRqF/YEzmW0uiqjHrCTzVp4fEiyodYguMWsnE/KvYjoOVqj9kGp/YkuOg9ADiSdGQ85LtffnD
	J1d9Y0N7WiIpjjkHJ8uOa2p9qLL1cTDcOe+Erbpb35kf2aAvKsgRSavsSc5KiP4k=
X-Received: by 2002:a05:622a:1345:b0:531:2243:436a with SMTP id d75a77b69052e-5369b85e19fmr17392521cf.55.1792568253882;
        Wed, 21 Oct 2026 00:37:33 -0700 (PDT)
X-Received: by 2002:a05:622a:1345:b0:531:2243:436a with SMTP id d75a77b69052e-5369b85e19fmr17392031cf.55.1792568253317;
        Wed, 21 Oct 2026 00:37:33 -0700 (PDT)
Received: from [10.111.170.159] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91c10c0bd4csm18301266d6.30.2026.10.21.00.37.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 00:37:32 -0700 (PDT)
Message-ID: <3843110c-4766-4352-ab2a-6d3017336534@oss.qualcomm.com>
Date: Wed, 21 Oct 2026 15:37:23 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 04/14] media: qcom: camss: Issue stream-on REG_UPDATE
 from CSID
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-4-04fd28d815c6@oss.qualcomm.com>
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-4-04fd28d815c6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=S/NMU4sP c=1 sm=1 tr=0 ts=6ad86bbe cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=0Hab3u7fAHnAQfOSGZgA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIxMDAzMCBTYWx0ZWRfXyppxgsnYbp3Q
 0wXQoDa7jVC3GtJgOr5E9NIGElhQdtzDUbJa+HG5EmNXoZ2k47KpMf9BlLn15CUKLX1d/CRbYWx
 G5USjo8kW5q5wnZXVuwst2965NEnQHBHtK5uIRfjrPB9fB1eZIsacaJqUByuWli8x4bJs256NKE
 suwcKA5WYAod2wS7vYbC2014vfuAIxjulKVkMgrSsiTW3IHzobNEyt931cGcuwUC6qDugfNoHhX
 7Oy9cvyTNkg7RfAF8xunPqvSyNNO3pa+WXt87j7uBMbns7e6VBWREMTekPo7IyFj6z43z/80yLR
 PR17SFBY0I2q6CeWmx50Zn7ygVwGCRzB61WXxziVxCaxSzWtHuf040CPQSA6MmwFTyc574agx8W
 G7463FZpv5mhD0Q1GW4gNeQnLv37J1crqWkR1GsJGX375yJYfTZireeQrSoU8BeTxOzPCrZ91nI
 C4VwWjvD5ci8ClY/f9Q==
X-Proofpoint-ORIG-GUID: mBThO354jaoWml3Pv7Ny5GkSG483CVt9
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIxMDAzMCBTYWx0ZWRfXy2OQJeDyJ8PR
 kQ01uiXQEbxbDy1EWzh81+3Mvsls0CttmU7j0dXsiJxSuFafJmFzk0gOFsQgUK2ZJ8zJRiBUYRx
 Lf7QDCYyC1UqG/bXvtzIO2lcZvbdZTk=
X-Proofpoint-GUID: mBThO354jaoWml3Pv7Ny5GkSG483CVt9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-21_02,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1011 priorityscore=1501 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610210030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_003736_962769_15FE8AA8 
X-CRM114-Status: GOOD (  32.93  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


Hi Bryan, Hangxiang,

On 10/12/2026 2:45 PM, Hangxiang Ma wrote:
> On stream-on, CAMSS starts the subdevices upstream from the video node
> through their sink pads, so the VFE is started before the CSID.
> 
> Starting with CSID 680, the REG_UPDATE is issued through the CSID
> rather than the VFE. However, vfe_enable_output_v2() still issues a
> REG_UPDATE after queueing each initial buffer, before the CSID has
> configured the stream. The VFE then never signals BUF_DONE. Therefore,
> the CAMSS now issues the REG_UPDATE from configure_stream() on CSID 680
> and CSID Gen3 instead. The operation happens after the RX configuration
> and before the RDI path is enabled.
> 
> Skip the VFE-side stream-on REG_UPDATE only when the CSID connected to
> the VFE sink pad implements the reg_update callback. Platforms whose
> CSID does not provide this callback, as well as lines fed by ISPIF,
> keep the existing VFE-side REG_UPDATE.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/camss/camss-csid-680.c |  3 ++
>   .../media/platform/qcom/camss/camss-csid-gen3.c    |  3 ++
>   drivers/media/platform/qcom/camss/camss-vfe.c      | 37 +++++++++++++++++++++-
>   3 files changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csid-680.c b/drivers/media/platform/qcom/camss/camss-csid-680.c
> index 345a67c8fb94..556cdfef6207 100644
> --- a/drivers/media/platform/qcom/camss/camss-csid-680.c
> +++ b/drivers/media/platform/qcom/camss/camss-csid-680.c
> @@ -296,6 +296,8 @@ static void __csid_configure_rdi_stream(struct csid_device *csid, u8 enable, u8
>   	writel(val, csid->base + CSID_RDI_CFG0(port));
>   }
>   
> +static void csid_subdev_reg_update(struct csid_device *csid, int port_id, bool is_clear);
> +
>   static void csid_configure_stream(struct csid_device *csid, u8 enable)
>   {
>   	int i;
> @@ -307,6 +309,7 @@ static void csid_configure_stream(struct csid_device *csid, u8 enable)
>   		if (csid->phy.en_vc & BIT(i)) {
>   			__csid_configure_rdi_stream(csid, enable, i, 0);
>   			__csid_configure_rx(csid, &csid->phy, 0);
> +			csid_subdev_reg_update(csid, i, false);
>   			__csid_ctrl_rdi(csid, enable, i);
>   		}
>   	}
> diff --git a/drivers/media/platform/qcom/camss/camss-csid-gen3.c b/drivers/media/platform/qcom/camss/camss-csid-gen3.c
> index 0fdbf75fb27d..830c9c818d3d 100644
> --- a/drivers/media/platform/qcom/camss/camss-csid-gen3.c
> +++ b/drivers/media/platform/qcom/camss/camss-csid-gen3.c
> @@ -219,6 +219,8 @@ static void __csid_configure_rdi_stream(struct csid_device *csid, u8 enable, u8
>   	writel(val, csid->base + CSID_RDI_CFG0(port));
>   }
>   
> +static void csid_subdev_reg_update(struct csid_device *csid, int port_id, bool is_clear);
> +
>   static void csid_configure_stream(struct csid_device *csid, u8 enable)
>   {
>   	u8 i;
> @@ -230,6 +232,7 @@ static void csid_configure_stream(struct csid_device *csid, u8 enable)
>   		if (csid->phy.en_vc & BIT(i)) {
>   			__csid_configure_rdi_stream(csid, enable, i, 0);
>   			__csid_configure_rx(csid, &csid->phy, 0);
> +			csid_subdev_reg_update(csid, i, false);
>   			__csid_ctrl_rdi(csid, enable, i);
>   		}
>   }
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
> index 2680a9914765..16a0b5663fe2 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe.c
> @@ -502,6 +502,37 @@ void vfe_buf_done(struct vfe_device *vfe, int wm)
>   	spin_unlock_irqrestore(&vfe->output_lock, flags);
>   }
>   
> +/*
> + * vfe_upstream_csid_has_reg_update - Check whether the CSID feeding this line
> + * issues its own streamon RUP (i.e. its configure_stream does the RUP).
> + *
> + * The CSID->VFE link is created in camss.c for all CSIDs and VFEs, so the
> + * upstream entity of the sink pad is either a CSID (possibly with RUP) or an
> + * ISPIF (no RUP). Only enabled links are considered.
> + */
> +static bool vfe_upstream_csid_has_reg_update(struct vfe_line *line)
> +{
> +	struct vfe_device *vfe = to_vfe(line);
> +	struct camss *camss = vfe->camss;
> +	struct media_pad *remote;
> +	unsigned int i;
> +
> +	remote = media_pad_remote_pad_first(&line->pads[MSM_VFE_PAD_SINK]);
> +	if (!remote || !is_media_entity_v4l2_subdev(remote->entity))
> +		return false;
> +
> +	for (i = 0; i < camss->res->csid_num; i++) {
> +		struct csid_device *csid = &camss->csid[i];
> +
> +		if (&csid->subdev.entity != remote->entity)
> +			continue;
> +
> +		return !!csid->res->hw_ops->reg_update;
> +	}
> +
> +	return false;
> +}
> +
>   int vfe_enable_output_v2(struct vfe_line *line)
>   {
>   	struct vfe_device *vfe = to_vfe(line);
> @@ -511,6 +542,7 @@ int vfe_enable_output_v2(struct vfe_line *line)
>   	unsigned long flags;
>   	unsigned int frame_skip = 0;
>   	unsigned int i;
> +	bool rup_in_csid;
>   
>   	sensor_pad = camss_find_sensor_pad(&line->subdev.entity);
>   	if (sensor_pad) {
> @@ -523,6 +555,8 @@ int vfe_enable_output_v2(struct vfe_line *line)
>   			frame_skip = VFE_FRAME_DROP_VAL - 1;
>   	}
>   
> +	rup_in_csid = vfe_upstream_csid_has_reg_update(line);
> +
>   	spin_lock_irqsave(&vfe->output_lock, flags);
>   
>   	ops->reg_update_clear(vfe, line->id);
> @@ -552,7 +586,8 @@ int vfe_enable_output_v2(struct vfe_line *line)
>   		output->gen2.active_num++;
>   		ops->vfe_wm_update(vfe, output->wm_idx[0],
>   				   output->buf[i]->addr[0], line);
> -		ops->reg_update(vfe, line->id);
> +		if (!rup_in_csid)
> +			ops->reg_update(vfe, line->id);
>   	}
>   
>   	spin_unlock_irqrestore(&vfe->output_lock, flags);
> 

According to the hardware documentation:
Starting with CSID 680, CAMIF has moved into the CSID. As a result, RUP 
is now issued by the CSID and propagated to the IFE.

Starting with CSID 980, software must also set the SET bit in 
RUP_AUP_CMD after issuing the RUP/AUP command. Otherwise, the hardware 
ignores the command and the corresponding register update does not take 
effect.


Bryan, according to the HW documentation, the change itself is 
consistent with the required programming sequence. The main question is 
whether this is the right implementation from the driver perspective, or 
if there is a cleaner way to handle it.

I have tested the change on the Hamoa EVK board.
Tested-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com> # Hamoa EVK


Thanks,
Wenmeng


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
