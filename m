Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A44B8C79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 09:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XtD99LMHT1n9r/UFacgWgFZ5Ax6hj4rQSPU1ljuufvw=; b=DRl1s5dq254OLV
	xM/t+/qLJGuOvS7W5XTDRpu1ajWjmyx+W7MONJ+HU+l3cdqv1Ci2n0eW26xTw33TpHlELCYT+vc0j
	4px+L77P/GRerMs96kDst1277GEqA9b8vWJ2hTGeXyKePjXMACooEM8jUHj6mppNnHAoGleEcZllC
	ovMkhx+zn9drv2tVB63E3bnBtI3RyK7GpVNDn5/thTZStRwyzNxn1yd7UTyUS75fkLsvAsTeQGnMD
	Ny31v89Ve8yCCUCK8KZoSESp6RIWINjYAJ+sTN30gIxZ1vcPDXY332X8E9s6vtnS6xYPOWUEkQprG
	uacSvXqw4cDRLaKJxPkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Vlg-00000006N5Q-3ptv;
	Mon, 07 Sep 2026 09:36:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Vlc-00000006N4X-448g
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 09:36:00 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68777OOq3363569
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 09:35:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2pZyG6eb3zzujfssjYHEawTXK0BmQECZw2QbjnCLMKU=; b=TiRieHp+jPF1S6xj
	CDMgOXvXZPDeKtwQlipQYwn/fEOv9Bn/BJnNYwwxUVVnGl73a5OryTSAWtbkKWi0
	0890Y02gV0+o5hVvTafjSO8IGASKpkKwdzE5DDAgFWtJAE/Go3N1NOjUHN21yWi4
	z/P0vghXqYaS2oX1fGZFkhuFyhCgDdIF0NYlWXussx7Srt35/V85V+W80EayA+GP
	0uQzk3TgD3dGEWqFWfqM6PK5idOdTOU0tmAdB7O2IhbNjoZ97Erx22RRUmaw/86A
	xCj86KYq8zI82jrDmc/63YxV+GcXMbD/w+WuY7oB+QRZnVXxJrbOBiyerASPiKHh
	i94gyw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghnmj1bq0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 09:35:53 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-39512608fb1so7604052a91.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 02:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788773753; x=1789378553; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2pZyG6eb3zzujfssjYHEawTXK0BmQECZw2QbjnCLMKU=;
        b=XofMD6eSLW50OO8tvO1EZG8ErgNyfwpvKZKNHGgTnLVccZEZHK9K4A8m3rWuST6VJb
         U2+OeSkx7MK2WcB5QFGTUY6XR0MqX5f1ETvXyUVwUGnTCMNLes79TExnhUobqwZUlvzm
         Q9cPMbJFqSujqT4adZQNjrjTI+SDgN+5TTDm0eOEu0YFjmtX61T7eaNwqa6CGBwdTboo
         F3SpwBkIp0OgmNBJRkJtp+jQqqsbN+st9XWPBKkWoXdR+my8I+Xxx95xAe+LFioaPhek
         sdFVSLNnpNQmVwDpoIkibMycqp4p194Jnz7RtNk97oQFlr3hiGIKMvIYBnBvvlZcDOYm
         3gxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788773753; x=1789378553;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2pZyG6eb3zzujfssjYHEawTXK0BmQECZw2QbjnCLMKU=;
        b=OTLznOXAS67Y+iH5N5xJeaYmz4jaXMFQjyddSCwwjiif0ny32nkKDjksMOovamcrda
         MzTbEd7Qc7tvGsFlTWuo0Bdw8HGxAPjRbaQQG6F4v0p8gQEeLykJw7NU+g63hx35wC4l
         kwqIPsqysTx5SfgfWH36Y+w8SjblunDyUs89IYA05ueSGDLPCqoTusDooI4zexdg605V
         pwophPCN4qq1ActqmZJLanRE5wYPaW8hOqXfk4z6rjmtJ6hMUDS+txbzTcHN5uhiQmlH
         ZtY2p1Xvmt80DYbouVSG0CPWWDDdpDQcttg/NBW2WXeGFFDFEAVfKODiyeh9bBbWb1x2
         2PAw==
X-Forwarded-Encrypted: i=1; AKwUvByDMS4IS6bMhXEX7ymB60Mgj9JJ6th/YJCh0hVz3BmJ9DKhICfH71wMBZu4t1EkWNRBFZ2lXclBsKk=@lists.infradead.org
X-Gm-Message-State: AFuF++nNVb5kfhUb+F+XKGlADmHeS24fcIxpEepcYtSZ9pj4zxsNWfSK
	9kuL61cTuv49DV+EcYLwXyHEDObQ6yhmHNgUk8Pg8ovgeQe5R4mKPqfmuvJgQ2UOzJt/wmKLjhJ
	8W8eB/GroUKDwKnREWpolvobFSehGQ2vHx7Dlkcsemmh7wMDFq/Fl5FQrZAshG2PfvGeH
X-Gm-Gg: AYBFou2F7J9r7nWTjMm+/8cCPT80KDlYwck75D5l2IirxsB/qt01asQckLgkz7592MW
	bQ2blKkZEJ1osIOlOcLaxmhTIpzJQ8o5NyDGEHt4Iu5jcDOOLvNG43+25VXQZ/SV9q3+mp9rq9/
	bRZQr2cjibLmpmGy4FcKusPNWlKR4lShUZr0zWbSrTKzA4GbyrhHjbzDJ4oZhUnrD+elLZ4Q/Ij
	DK7VCdGRT8nPNNF4nBpnYjQWAUNEHxQ4bx2Dik5TW1GalaoDSP2JNWUEZ/nlLK/lphfhtoz8lF3
	buylys9kCXTqfkqxvTHaMOT4m8b9S4LGUKuWljB6NVwtRuoXHTHGU3XZEJIsf6ulGh/Zf6+adgq
	3ZHQgKdcyNNhgANeX6cHYwTtxr9wnWEY=
X-Received: by 2002:a17:90a:d647:b0:38e:70d5:b12d with SMTP id 98e67ed59e1d1-39b261074camr32015996a91.6.1788773753055;
        Mon, 07 Sep 2026 02:35:53 -0700 (PDT)
X-Received: by 2002:a17:90a:d647:b0:38e:70d5:b12d with SMTP id 98e67ed59e1d1-39b261074camr32015923a91.6.1788773752605;
        Mon, 07 Sep 2026 02:35:52 -0700 (PDT)
Received: from [10.206.103.40] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339ac24d7esm41656313eec.15.2026.09.07.02.35.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2026 02:35:51 -0700 (PDT)
Message-ID: <8b45dfc1-5350-4a63-9213-a1160478683d@oss.qualcomm.com>
Date: Mon, 7 Sep 2026 15:05:43 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/msm/dp: clear force_link_train flag when link
 training succeeds
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
 <2b1e73f4-a476-4dc8-83f2-42be1008c1fc@oss.qualcomm.com>
Content-Language: en-US
From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
In-Reply-To: <2b1e73f4-a476-4dc8-83f2-42be1008c1fc@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDEwNCBTYWx0ZWRfXxJ+0mcm6SVNq
 RKLDCUPlUEvxtX8pM0uLnhupShKK2tB9XklX25DcihsYQRco1W8S9Wm7z+zs8B2YeORRisXEOQ1
 FlDNK92C7RpvgAq8CpK8zSK1eWe6WYoGGdYls0H9OC/Mg0jcnN2FaZcn1StefQg6Q+hpZwskzun
 IIwbu1ksSVB6Jvrw1lqeMYm/hgWKEmJcnU0Kh3DNtdYNqwAs38/hVTdmg3d/S6A1qNgDgF/GRwB
 IkyhcNY0TIan2G4UQrdzb6tIXzug/KOJEheXuM9acMr4VwtGJ89bq9UyDVPe7bbmsD9kKOPh/hX
 O/OIheQomrPI6HdadklAw+7Tab8nJbRQ3whNfEK3dqduhIcJZTJhaOYt8qt8OJzIuL2Hsr5eTm2
 lUdFgpDLJWwS3uSxtZtBrTPsRS6EaT7lM+M+ESNtlDg6EPLZe5b9K2PyBNCAIgD4J9Wnio4UDfM
 ac+gNwwLBGw2Ftd1S7Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDEwNCBTYWx0ZWRfX36N2ebM4PdVO
 XMuNuaiOPVKgUJrFCkis9OzrfETy3+2cY8Pfopt6PxhOyAsxg4lO+LX1Uj3VDA+4teAVyz6TpLW
 1A/yze35Iin4z1+jAxfwjLWODw6WnaU=
X-Proofpoint-ORIG-GUID: bUzlp6VR-bvrtLcF4t_2MWGWeMsPzhEi
X-Proofpoint-GUID: bUzlp6VR-bvrtLcF4t_2MWGWeMsPzhEi
X-Authority-Analysis: v=2.4 cv=LZYMLDfi c=1 sm=1 tr=0 ts=6a9e8579 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=gUzaiutwswMiDYJum_AA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_02,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609070104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_023559_175173_1AAC4B50 
X-CRM114-Status: GOOD (  13.42  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 24-08-2026 18:47, Konrad Dybcio wrote:
> On 8/24/26 1:28 PM, Saurabh Anand wrote:
>> msm_dp_display_prepare_link() sets force_link_train = true before calling
>> msm_dp_ctrl_on_link(). On success the flag was never cleared, so
>> msm_dp_ctrl_prepare_stream_on() would unconditionally trigger a second
>> link retrain even though the link was already trained.
>>
>> Clear force_link_train on the success path so that
>> msm_dp_ctrl_prepare_stream_on() only retrains when the channel EQ check
>> fails, as intended.
>>
>> Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
>> ---
>>   drivers/gpu/drm/msm/dp/dp_display.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
>> index bc646d172abe..40e19d506a45 100644
>> --- a/drivers/gpu/drm/msm/dp/dp_display.c
>> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
>> @@ -649,6 +649,8 @@ static int msm_dp_display_prepare_link(struct msm_dp_display_private *dp)
>>   		return rc;
>>   	}
>>   
>> +	force_link_train = false;
>> +
>>   	return msm_dp_ctrl_prepare_stream_on(dp->ctrl, dp->panel, force_link_train);
> This makes the argument of this function useless

Yes, agreed. I will update it in the next version.

>
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
