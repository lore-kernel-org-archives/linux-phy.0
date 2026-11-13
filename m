Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31022606A321
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 05:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ICT8Zng+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=UDTuCscC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=NRY4Ez4W
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+5JE1vVRMky4DglWnuj/DT8YQfwWxBxXzXIORx4wAKc=; b=ICT8Zng+JqqL65oBwhqz1EPk30
	GXxGJhT8FPT/TMIt8dUCVEKiNC3YC+X3Aaacz7JVkjqTfx6+C4QLZb5VWUKv1HGVAryVq/KJ8acK7
	8cfhTMW4xg9bdNjtCiQz0DGmC6zQFbisLEbwT8DsGwqShbIA+IZln16QJCRyp7dYsxc0aUtfoFsiC
	Q0SSvWK0whUhKBOmbRvHJ9hguA1isyBKlHhaafUDGYxvyeGKn5YgSEDtiuq8G3kbJ5hC1bhj1EdwO
	c9xwdeuUAnEtx54Z4+PHIwxYg9uqF8MKJQfo5BaJItaI5Ief511VUzmki2G7QGPUkI+12o450Fgql
	86HPdbyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjRQ-0000000BfEr-39Md;
	Fri, 13 Nov 2026 05:03:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjRN-0000000BfEQ-45hI
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 05:03:11 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD2K7bg3179325
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:03:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4LzS+YwqaLQraW5nig2t+3o+xSFf0cUTjyJXReh6cLY=; b=UDTuCscCngJY3MLs
	CRPtcPVcxnzOlQogNMs08+nMF8l8kAieCNstwghs4wYc96xBzKYbRIXNTbu+LKw9
	zJ2IrqGXBkNxEK51C8qHgZmH9VvYgJYhv8LEC26IpY/bXilK4cw8glzimG3OxmRG
	wLslyyemyvWaRPfpYIAzCS9TM/3kS2uHdj4Uo5r3Xo58p31ZT663bt/1xaJFUKpu
	MA2MnmnS5NnSiHrgkkWxxqIuNBTWK+bxZ1dL8gs5qiVTs3Z/5A3buMaQ7iZgluI3
	tv2Du45ektPAFZ3aSjB9yCknMUf5NTgCytbSvBcLvDCdVFuXIxKR7xeF8MMBbnBi
	SndSMQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwh0aj68u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:03:08 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cdd48746a49so305459a12.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 21:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794546188; x=1795150988; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4LzS+YwqaLQraW5nig2t+3o+xSFf0cUTjyJXReh6cLY=;
        b=NRY4Ez4Wi0SM6D+aVkyxCfs6dGBZT1NfJymOwvM1CLGgvmNKbKkEK/5I7UxiK92B96
         qfelj/B5yvdkAFeugYVKMG3y4IpsQ87aOj9zFkLTB+EXHEurJz2nnMqJpMqaUtL8z/s7
         jpdk10xGraiMhtGVAatYxnzElKLfYitL0UnEle3cyd8MGbPioUskpjswpLnen7jjf7hA
         n2IMW5ek0G3LYW9tddDTdWq1pjCzrTImGWyXh/uiqj8MAoWep3z/wThUQ84i9B9XsHr+
         3wziII54PVBwIQ7pikuVoY143YcB6uTnUXbW5x/zaHlU04lWlpElPhMBetfyV9iFtUzf
         ki1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794546188; x=1795150988;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4LzS+YwqaLQraW5nig2t+3o+xSFf0cUTjyJXReh6cLY=;
        b=ZF8ram/Cr+fYu3epJzevdOOY1sf/q7reLeiW7pbJaz2rB/KKl0IrWmhEeiuyoCX9tA
         v10v6XXGQ2sBrAJ6JapxEZ2ZRP9PKE9KKN3elVvGNtaa2XxjNOtXQP4dR3QC9x2dCNiE
         TJOAPYRxaVCgFsOQlMc7msY7hIduqPk8VlhhrelICgdeskksVBFfKsjaZC0u+R6XigQS
         Pjv1NMsrKjxmK5u8notzlLAvCvt4JqO9Htbzely9BgPyQL119WOWlEVJUGjDjFyW24Dc
         yQc0v+lVx7De7nfKcYlDMy+R1OljxaCS/YyTql06rYcjNkGstZsdX61OHYC+ZCSOkM/n
         R2qw==
X-Forwarded-Encrypted: i=1; AL+hErEtMx8Gz2i3InPDRdvnlhbr28A4QQTtGInkz813xsXAYC3bfAiOeMrE1GIv8IasabnACa/Po8b7NvM=@lists.infradead.org
X-Gm-Message-State: APuU4Z/NmjRTcEZf5UXlZAUJBIKrVTr8BSr5/U7OejBsTmflmwjDCxKz
	MoRrCDwQOE73/06h0Qxp52kwj5ytEHLBsgJonvETxwNP+WmRhOCHp3/abDUrUzp3l2dMchpc3mQ
	gvgnA8k1GXxqJbi9z0iJ099RF6BuehnhLo+mR+iUqfC7Wn4TdvFq8o7dLX8InI9T9frlz
X-Gm-Gg: AYBFou0m+MVvO/GiZFP1sgjyaAVTzo4+OTsA+zuBpTi8SgkKRWUjfQ8m708JTd5zAU/
	MQfLp3vN4z9Qdr+ysI9gN6luxuqTL1R1CZ1Iie6l4vp/LvEeq3nz1+Kvk1atxE60Oqc+jTANsjn
	dF7nrj664FLc4f+t1ghRGEWW9eE1frRqRyBXBhC1VqSr2PEpYJbO98mOLN6Fk+X0FwmdAHc0gen
	Y1p2CgVjw8c5/vXweiMAYV4Wfr91uO81PbfQG/beDN+P3PTa7CI0jEp20gCoMsbc+527qpkgmMz
	FvSw9x6CI/SbOSNK7AUQx2V22byRsvZXoRvRCi+HYkRBPm8hTmJMk6YqqVjxJ2ge70UM0FHgl3w
	P7I8ozoBT9oCXYw0DhE+g017E8fEgdZwYsADEfWtIRkusxf1m+mCCZypBmPsKQg==
X-Received: by 2002:a05:6a21:7993:b0:3e8:b7fd:6284 with SMTP id adf61e73a8af0-3f7a7ec35a7mr1136669637.43.1794546187532;
        Thu, 12 Nov 2026 21:03:07 -0800 (PST)
X-Received: by 2002:a05:6a21:7993:b0:3e8:b7fd:6284 with SMTP id adf61e73a8af0-3f7a7ec35a7mr1136637637.43.1794546187010;
        Thu, 12 Nov 2026 21:03:07 -0800 (PST)
Received: from [10.204.79.100] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cddc186f472sm610637a12.6.2026.11.12.21.03.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2026 21:03:06 -0800 (PST)
Message-ID: <fb8b5604-b115-417f-97ba-f0848b024fa3@oss.qualcomm.com>
Date: Fri, 13 Nov 2026 10:32:59 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] drm/msm/dp: continue link training downgrade when
 cable is still plugged
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, mani@kernel.org,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        abhinav.kumar@linux.dev, jesszhan0024@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, irlied@gmail.com, simona@ffwll.ch,
        Saurabh Anand <saurabh.anand@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        quic_riteshk@quicinc.com, quic_vproddut@quicinc.com,
        quic_mkuntuma@quicinc.com, mahadevan.p@oss.qualcomm.com
References: <20261111104434.2222182-1-naidu.nama@oss.qualcomm.com>
 <20261111104434.2222182-4-naidu.nama@oss.qualcomm.com>
 <x74bp2hkm4r2qz7oelhwpgexd3tslsxgc67pu22kmlo5yjy33z@v5ka23e5aqqi>
Content-Language: en-US
From: Naidu Nama <naidu.nama@oss.qualcomm.com>
In-Reply-To: <x74bp2hkm4r2qz7oelhwpgexd3tslsxgc67pu22kmlo5yjy33z@v5ka23e5aqqi>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAxOSBTYWx0ZWRfXyCPniVvYiu5V
 yfTqtWNRE8ehcqrn9f0N3wDNR9PCxKxnG7L+CwpnGdiNkH6AOldesbaOX7dcx12jmJ4FFFbTz8M
 En8+LHTWPW6JF9cNittCG/BEsmOtyTI=
X-Proofpoint-GUID: 4cgdUaNX7ls82_j200Y3lg4x8tCn2dTi
X-Authority-Analysis: v=2.4 cv=N+e8hG9B c=1 sm=1 tr=0 ts=6af69a0c cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=WWo1CF43h56B4pvcxosA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAxOSBTYWx0ZWRfXzrn8YFX8/A/W
 FYyQ9Sl86t75Ri6O2VvuHeFlkHArZmVNWwsv7zQC6KscPG6WX8ElIaXTnWaU+e2jmJMGBfvJv7W
 GLmtFrN4pK4N7uGQig1WpCYqEUaumMSxVnXgx0mqNeyOwI3vSQzOKI6csAy1+lJmV/WaKJD+0gY
 SGuL+NqagaKP22p8alufiLV8uV94KGmo/GJ4l3esF5tlCxfo3VCeee/VrQI0U8tlzg1Ike+D66k
 SKjA8kMzzjEbiSgSQD+fir7qMWPvaPxVktU1jBuw25Qs9XILgPbaRfV7BopuGmU4rut7K20WCU8
 X07teHNDo0vjixsHMDcYLuNWGQQ3tXGd5tuB1YShxXgfiQpXxvCKzmtP9uMI2YdQHN4LXD0OKAa
 PbC9OWozqZtMV7dnLgI95YQtHDZQpsZXEzTTGooyaich4wLgQ5JCqdgp1Hnll/Dq66En8aPwr00
 ixcmmZ3sIH+3X7jUObw==
X-Proofpoint-ORIG-GUID: 4cgdUaNX7ls82_j200Y3lg4x8tCn2dTi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_01,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 phishscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_210310_136055_EB8F64A7 
X-CRM114-Status: GOOD (  26.38  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIDExLTExLTIwMjYgMTk6MzgsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gV2VkLCBO
b3YgMTEsIDIwMjYgYXQgMDQ6MTM6NTVQTSArMDUzMCwgbmFpZHUgbmFtYSB3cm90ZToKPj4gRnJv
bTogU2F1cmFiaCBBbmFuZCA8c2F1cmFiaC5hbmFuZEBvc3MucXVhbGNvbW0uY29tPgo+Pgo+PiBE
dXJpbmcgYSBUeXBlLUMgcmVjb25uZWN0IHRoZSBBVVggY2hhbm5lbCBtYXkgcmVwb3J0IGxpbmst
ZGlzY29ubmVjdGVkCj4+IHRyYW5zaWVudGx5IHdoaWxlIHRoZSBwaHlzaWNhbCBjYWJsZSBpcyBz
dGlsbCBwcmVzZW50LiBUaGUgbGluayB0cmFpbmluZwo+PiByZXRyeSBsb29wIGluIG1zbV9kcF9j
dHJsX29uX2xpbmsoKSB3YXMgYWJvcnRpbmcgaW1tZWRpYXRlbHkgb24gYW55Cj4+IG1zbV9kcF9h
dXhfaXNfbGlua19jb25uZWN0ZWQoKSBmYWlsdXJlLCBwcmV2ZW50aW5nIHRoZSByYXRlL2xhbmUg
ZG93bmdyYWRlCj4+IHBhdGggZnJvbSBydW5uaW5nLgo+Pgo+PiBXaGVuIHRoZSBkaXNwbGF5IGlz
IGtub3duIHRvIGJlIHBsdWdnZWQgKG1zbV9kcF9jdHJsLT5wbHVnZ2VkKSwgYW4gQVVYCj4+IGxp
bmstZGlzY29ubmVjdGVkIHN0YXR1cyBpcyBsaWtlbHkgYSB0cmFuc2llbnQgZ2xpdGNoIHJhdGhl
ciB0aGFuIGEgdHJ1ZQo+PiB1bnBsdWcuIEFsbG93IHRoZSBkb3duZ3JhZGUgbG9vcCB0byBjb250
aW51ZSBpbiB0aGF0IGNhc2UgYnkgcmVxdWlyaW5nIGJvdGgKPj4gY29uZGl0aW9ucyBiZWZvcmUg
YnJlYWtpbmcgb3V0IG9mIHRoZSByZXRyeSBsb29wOiBBVVggcmVwb3J0cyBkaXNjb25uZWN0ZWQK
Pj4gYW5kIHRoZSBkaXNwbGF5IGlzIG5vdCBwbHVnZ2VkLgo+IElzIHRoZXJlIGEgcmVhc29uIHRv
IGFzc3VtZSB0aGF0IERQIGlzIG5vdCBwbHVnZ2VkIGF0IHRoaXMgcG9pbnQ/IEkKPiBndWVzcyBu
b3QuIEJ1dCB0aGUgb3RoZXIgaXNzdWUgaXM6IHdoYXQgaWYgdGhlIERQIGdldHMgdW5wbHVnZ2Vk
IGluIHRoZQo+IG1pZGRsZSBvZiBsaW5rIHRyYWluaW5nLgoKCmRwIGlzIHBsdWdnZWQgYXQgdGhp
cyBwb2ludCwgdGhlIGlzc3VlIHdlIGhhdmUgaXMgdGhlIAptc21fZHBfYXV4X2lzX2xpbmtfY29u
bmVjdGVkIGlzIGdpdmluZyB0aGUgcmV0dXJuIHN0YXR1cyBhcyAwIGluIApzb21ldGltZXMgLCBk
dWUgdG8gdGhpcyB0aGUgbGluayB0cmFpbmluZwpyZXRyeSBsb29wIGluIG1zbV9kcF9jdHJsX29u
X2xpbmsoKSB3YXMgYWJvcnRpbmcgaW1tZWRpYXRlbHkuIFRvIGF2b2lkIAp0aGlzIHdlIGFyZSBj
aGVja2luZyB0aGUgcGx1Z2dlZCBzdGF0dXMgYXMgd2VsbC4KClNpbWlsYXIgY2hlY2vCoCB3YXMg
bWFkZSBhdCBkcF9kaXNwYWx5LmMgaW4gZnVuY3Rpb24gbXNtX2RwX2JyaWRnZV9kZXRlY3QuCgpI
ZXJlIGFzIHdlbGwgd2UgYXJlIGdldHRpbmcgdGhlIHJldCBhcyAwICxhcyB0aGVyZSBpcyBvbmUg
bW9yZSBjaGVjayAKcGx1Z2dlZCB3aGljaCBpcyB0cnVlICwgd2hpY2ggaXMgYXZvaWRpbmcgdG8g
Z28gdG8gaWYgc3RhdGVtZW50IGFuZCAKY29udGludWUgZnVydGhlciAuCnJldCA9IG1zbV9kcF9h
dXhfaXNfbGlua19jb25uZWN0ZWQocHJpdi0+YXV4KTsKIMKgIMKgIMKgIMKgIERSTV9ERUJVR19E
UCgiYXV4IGxpbmsgc3RhdHVzOiAleFxuIiwgcmV0KTsKIMKgIMKgIMKgIMKgIGlmICghcHJpdi0+
cGx1Z2dlZCAmJiAhcmV0KSB7CiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBEUk1fREVCVUdfRFAo
ImF1eCBub3QgY29ubmVjdGVkXG4iKTsKIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHByaXYtPnBs
dWdnZWQgPSBmYWxzZTsKIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGdvdG8gZW5kOwogwqAgwqAg
wqAgwqAgfQoKaWYgZHAgZ2V0cyB1bnBsdWdnZWQgaW4gdGhlIG1pZGRsZSBvZiBsaW5rIHRyYWlu
aW5nLGJ1dCB0aGUgY2FsbCBzdGFydGVkIAp3aXRoIHBsdWdnZWQ9dHJ1ZSwgdGhhdCBwYXJ0aWN1
bGFyIGNoZWNrIHdvbuKAmXQgc3RvcCB0cmFpbmluZyAKaW1tZWRpYXRlbHkuIEl0IG1heSBjb250
aW51ZSByZXRyeWluZyBvciBmYWlsIGxhdGVyIHdoZW4gQVVYL2xpbmsgCm9wZXJhdGlvbnMgZmFp
bC4KPgo+PiBTaWduZWQtb2ZmLWJ5OiBTYXVyYWJoIEFuYW5kIDxzYXVyYWJoLmFuYW5kQG9zcy5x
dWFsY29tbS5jb20+Cj4gU29CCgoKU3VyZSwgSSB3aWxsIHVwZGF0ZSBpbiB2My4KPgo+PiAtLS0K
Pj4gICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2N0cmwuYyAgICB8IDE1ICsrKysrKysrLS0t
LS0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfY3RybC5oICAgIHwgIDQgKystLQo+
PiAgIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfZGlzcGxheS5jIHwgIDcgKysrLS0tLQo+PiAg
IDMgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2N0cmwuYyBiL2RyaXZlcnMv
Z3B1L2RybS9tc20vZHAvZHBfY3RybC5jCj4+IGluZGV4IDZiOWQ5YTc2YmEwNS4uZjhhNmJkN2Iw
ZDEwIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2N0cmwuYwo+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2N0cmwuYwo+PiBAQCAtMjI3NCw3ICsyMjc0
LDggQEAgdm9pZCBtc21fZHBfY3RybF9vZmZfcGl4ZWxfY2xrKHN0cnVjdCBtc21fZHBfY3RybCAq
bXNtX2RwX2N0cmwsIGVudW0gbXNtX2RwX3N0cmUKPj4gICB9Cj4+ICAgCj4+ICAgc3RhdGljIGlu
dCBtc21fZHBfY3RybF9wcm9jZXNzX3BoeV90ZXN0X3JlcXVlc3Qoc3RydWN0IG1zbV9kcF9jdHJs
X3ByaXZhdGUgKmN0cmwsCj4+IC0JCQkJCQlzdHJ1Y3QgbXNtX2RwX3BhbmVsICpwYW5lbCkKPj4g
KwkJCQkJCXN0cnVjdCBtc21fZHBfcGFuZWwgKnBhbmVsLAo+PiArCQkJCQkJYm9vbCBwbHVnZ2Vk
KQo+IENhbiBpdCBldmVyIGJlIGZhbHNlIGhlcmUgd2l0aCB5b3VyIHBhdGNoIGluIHBsYWNlPwoK
Cml0IHdpbGwgYmUgYWx3YXlzIHRydWUsIHRoaXMgaXMgc2V0IHRvIHRydWUgYmVmb3JlIHRoZSBs
aW5rIHRyYWluaW5nLgo+Cj4+ICAgewo+PiAgIAlpbnQgcmV0Owo+PiAgIAl1bnNpZ25lZCBsb25n
IHBpeGVsX3JhdGU7Cj4+IEBAIC0yMjkzLDcgKzIyOTQsNyBAQCBzdGF0aWMgaW50IG1zbV9kcF9j
dHJsX3Byb2Nlc3NfcGh5X3Rlc3RfcmVxdWVzdChzdHJ1Y3QgbXNtX2RwX2N0cmxfcHJpdmF0ZSAq
Y3RybAo+PiAgIAltc21fZHBfY3RybF9vZmZfcGl4ZWxfY2xrKCZjdHJsLT5tc21fZHBfY3RybCwg
cGFuZWwtPnN0cmVhbV9pZCk7Cj4+ICAgCW1zbV9kcF9jdHJsX29mZl9saW5rKCZjdHJsLT5tc21f
ZHBfY3RybCwgcGFuZWwpOwo+PiAgIAo+PiAtCXJldCA9IG1zbV9kcF9jdHJsX29uX2xpbmsoJmN0
cmwtPm1zbV9kcF9jdHJsLCBwYW5lbCk7Cj4+ICsJcmV0ID0gbXNtX2RwX2N0cmxfb25fbGluaygm
Y3RybC0+bXNtX2RwX2N0cmwsIHBhbmVsLCBwbHVnZ2VkKTsKPj4gICAJaWYgKHJldCkgewo+PiAg
IAkJRFJNX0VSUk9SKCJmYWlsZWQgdG8gZW5hYmxlIERQIGxpbmsgY29udHJvbGxlclxuIik7Cj4+
ICAgCQlyZXR1cm4gcmV0Owo+PiBAQCAtMjMxMCw3ICsyMzExLDcgQEAgc3RhdGljIGludCBtc21f
ZHBfY3RybF9wcm9jZXNzX3BoeV90ZXN0X3JlcXVlc3Qoc3RydWN0IG1zbV9kcF9jdHJsX3ByaXZh
dGUgKmN0cmwKPj4gICB9Cj4+ICAgCj4+ICAgdm9pZCBtc21fZHBfY3RybF9oYW5kbGVfc2lua19y
ZXF1ZXN0KHN0cnVjdCBtc21fZHBfY3RybCAqbXNtX2RwX2N0cmwsCj4+IC0JCQkJICAgICBzdHJ1
Y3QgbXNtX2RwX3BhbmVsICpwYW5lbCkKPj4gKwkJCQkgICAgIHN0cnVjdCBtc21fZHBfcGFuZWwg
KnBhbmVsLCBib29sIHBsdWdnZWQpCj4+ICAgewo+PiAgIAlzdHJ1Y3QgbXNtX2RwX2N0cmxfcHJp
dmF0ZSAqY3RybDsKPj4gICAJdTMyIHNpbmtfcmVxdWVzdCA9IDB4MDsKPj4gQEAgLTIzMjUsNyAr
MjMyNiw3IEBAIHZvaWQgbXNtX2RwX2N0cmxfaGFuZGxlX3NpbmtfcmVxdWVzdChzdHJ1Y3QgbXNt
X2RwX2N0cmwgKm1zbV9kcF9jdHJsLAo+PiAgIAo+PiAgIAlpZiAoc2lua19yZXF1ZXN0ICYgRFBf
VEVTVF9MSU5LX1BIWV9URVNUX1BBVFRFUk4pIHsKPj4gICAJCWRybV9kYmdfZHAoY3RybC0+ZHJt
X2RldiwgIlBIWV9URVNUX1BBVFRFUk4gcmVxdWVzdFxuIik7Cj4+IC0JCWlmIChtc21fZHBfY3Ry
bF9wcm9jZXNzX3BoeV90ZXN0X3JlcXVlc3QoY3RybCwgcGFuZWwpKSB7Cj4+ICsJCWlmIChtc21f
ZHBfY3RybF9wcm9jZXNzX3BoeV90ZXN0X3JlcXVlc3QoY3RybCwgcGFuZWwsIHBsdWdnZWQpKSB7
Cj4+ICAgCQkJRFJNX0VSUk9SKCJwcm9jZXNzIHBoeV90ZXN0X3JlcSBmYWlsZWRcbiIpOwo+PiAg
IAkJCXJldHVybjsKPj4gICAJCX0KPj4gQEAgLTIzNzcsNyArMjM3OCw3IEBAIHN0YXRpYyBib29s
IG1zbV9kcF9jdHJsX2NoYW5uZWxfZXFfb2soc3RydWN0IG1zbV9kcF9jdHJsX3ByaXZhdGUgKmN0
cmwpCj4+ICAgfQo+PiAgIAo+PiAgIGludCBtc21fZHBfY3RybF9vbl9saW5rKHN0cnVjdCBtc21f
ZHBfY3RybCAqbXNtX2RwX2N0cmwsCj4+IC0JCQlzdHJ1Y3QgbXNtX2RwX3BhbmVsICpwYW5lbCkK
Pj4gKwkJCXN0cnVjdCBtc21fZHBfcGFuZWwgKnBhbmVsLCBib29sIHBsdWdnZWQpCj4+ICAgewo+
PiAgIAlpbnQgcmMgPSAwOwo+PiAgIAlzdHJ1Y3QgbXNtX2RwX2N0cmxfcHJpdmF0ZSAqY3RybDsK
Pj4gQEAgLTI0MjcsNyArMjQyOCw3IEBAIGludCBtc21fZHBfY3RybF9vbl9saW5rKHN0cnVjdCBt
c21fZHBfY3RybCAqbXNtX2RwX2N0cmwsCj4+ICAgCQkJYnJlYWs7Cj4+ICAgCQl9IGVsc2UgaWYg
KHRyYWluaW5nX3N0ZXAgPT0gRFBfVFJBSU5JTkdfMSkgewo+PiAgIAkJCS8qIGxpbmsgdHJhaW5f
MSBmYWlsZWQgKi8KPj4gLQkJCWlmICghbXNtX2RwX2F1eF9pc19saW5rX2Nvbm5lY3RlZChjdHJs
LT5hdXgpKQo+PiArCQkJaWYgKCFtc21fZHBfYXV4X2lzX2xpbmtfY29ubmVjdGVkKGN0cmwtPmF1
eCkgJiYgIXBsdWdnZWQpCj4+ICAgCQkJCWJyZWFrOwo+PiAgIAo+PiAgIAkJCWRybV9kcF9kcGNk
X3JlYWRfbGlua19zdGF0dXMoY3RybC0+YXV4LCBsaW5rX3N0YXR1cyk7Cj4+IEBAIC0yNDUyLDcg
KzI0NTMsNyBAQCBpbnQgbXNtX2RwX2N0cmxfb25fbGluayhzdHJ1Y3QgbXNtX2RwX2N0cmwgKm1z
bV9kcF9jdHJsLAo+PiAgIAkJCX0KPj4gICAJCX0gZWxzZSBpZiAodHJhaW5pbmdfc3RlcCA9PSBE
UF9UUkFJTklOR18yKSB7Cj4+ICAgCQkJLyogbGluayB0cmFpbl8yIGZhaWxlZCAqLwo+PiAtCQkJ
aWYgKCFtc21fZHBfYXV4X2lzX2xpbmtfY29ubmVjdGVkKGN0cmwtPmF1eCkpCj4+ICsJCQlpZiAo
IW1zbV9kcF9hdXhfaXNfbGlua19jb25uZWN0ZWQoY3RybC0+YXV4KSAmJiAhcGx1Z2dlZCkKPj4g
ICAJCQkJYnJlYWs7Cj4+ICAgCj4+ICAgCQkJZHJtX2RwX2RwY2RfcmVhZF9saW5rX3N0YXR1cyhj
dHJsLT5hdXgsIGxpbmtfc3RhdHVzKTsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9t
c20vZHAvZHBfY3RybC5oIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9jdHJsLmgKPj4gaW5k
ZXggZmM4ODQwMzgxODJmLi4zZWRmOTU0Y2M4MDUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9tc20vZHAvZHBfY3RybC5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBf
Y3RybC5oCj4+IEBAIC0xNyw3ICsxNyw3IEBAIHN0cnVjdCBtc21fZHBfY3RybCB7Cj4+ICAgc3Ry
dWN0IHBoeTsKPj4gICAKPj4gICBpbnQgbXNtX2RwX2N0cmxfb25fbGluayhzdHJ1Y3QgbXNtX2Rw
X2N0cmwgKm1zbV9kcF9jdHJsLAo+PiAtCQkJc3RydWN0IG1zbV9kcF9wYW5lbCAqcGFuZWwpOwo+
PiArCQkJc3RydWN0IG1zbV9kcF9wYW5lbCAqcGFuZWwsIGJvb2wgcGx1Z2dlZCk7Cj4+ICAgaW50
IG1zbV9kcF9jdHJsX29uX3N0cmVhbShzdHJ1Y3QgbXNtX2RwX2N0cmwgKm1zbV9kcF9jdHJsLCBz
dHJ1Y3QgbXNtX2RwX3BhbmVsICpwYW5lbCk7Cj4+ICAgaW50IG1zbV9kcF9jdHJsX3ByZXBhcmVf
c3RyZWFtX29uKHN0cnVjdCBtc21fZHBfY3RybCAqbXNtX2RwX2N0cmwsCj4+ICAgCQkJCSAgc3Ry
dWN0IG1zbV9kcF9wYW5lbCAqcGFuZWwpOwo+PiBAQCAtMjgsNyArMjgsNyBAQCB2b2lkIG1zbV9k
cF9jdHJsX3B1c2hfaWRsZShzdHJ1Y3QgbXNtX2RwX2N0cmwgKm1zbV9kcF9jdHJsKTsKPj4gICBp
cnFyZXR1cm5fdCBtc21fZHBfY3RybF9pc3Ioc3RydWN0IG1zbV9kcF9jdHJsICptc21fZHBfY3Ry
bCwKPj4gICAJCQkgICAgc3RydWN0IG1zbV9kcF9wYW5lbCAqcGFuZWwpOwo+PiAgIHZvaWQgbXNt
X2RwX2N0cmxfaGFuZGxlX3NpbmtfcmVxdWVzdChzdHJ1Y3QgbXNtX2RwX2N0cmwgKm1zbV9kcF9j
dHJsLAo+PiAtCQkJCSAgICAgc3RydWN0IG1zbV9kcF9wYW5lbCAqcGFuZWwpOwo+PiArCQkJCSAg
ICAgc3RydWN0IG1zbV9kcF9wYW5lbCAqcGFuZWwsIGJvb2wgcGx1Z2dlZCk7Cj4+ICAgc3RydWN0
IG1zbV9kcF9jdHJsICptc21fZHBfY3RybF9nZXQoc3RydWN0IGRldmljZSAqZGV2LAo+PiAgIAkJ
CQkgICAgc3RydWN0IG1zbV9kcF9saW5rICpsaW5rLAo+PiAgIAkJCQkgICAgc3RydWN0IGRybV9k
cF9hdXggKmF1eCwKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfZGlz
cGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmMKPj4gaW5kZXggMTY5
OTM4YmE1MTVlLi41NTFkMmM2M2VmOGUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9t
c20vZHAvZHBfZGlzcGxheS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfZGlz
cGxheS5jCj4+IEBAIC0zOTksNyArMzk5LDcgQEAgc3RhdGljIGludCBtc21fZHBfZGlzcGxheV9o
YW5kbGVfaXJxX2hwZChzdHJ1Y3QgbXNtX2RwX2Rpc3BsYXlfcHJpdmF0ZSAqZHApCj4+ICAgCj4+
ICAgCWRybV9kYmdfZHAoZHAtPmRybV9kZXYsICIlZFxuIiwgc2lua19yZXF1ZXN0KTsKPj4gICAK
Pj4gLQltc21fZHBfY3RybF9oYW5kbGVfc2lua19yZXF1ZXN0KGRwLT5jdHJsLCBkcC0+cGFuZWwp
Owo+PiArCW1zbV9kcF9jdHJsX2hhbmRsZV9zaW5rX3JlcXVlc3QoZHAtPmN0cmwsIGRwLT5wYW5l
bCwgZHAtPnBsdWdnZWQpOwo+PiAgIAo+PiAgIAlpZiAoc2lua19yZXF1ZXN0ICYgRFBfVEVTVF9M
SU5LX1ZJREVPX1BBVFRFUk4pCj4+ICAgCQltc21fZHBfZGlzcGxheV9oYW5kbGVfdmlkZW9fcmVx
dWVzdChkcCk7Cj4+IEBAIC02NDgsMTEgKzY0OCwxMCBAQCBzdGF0aWMgaW50IG1zbV9kcF9kaXNw
bGF5X3ByZXBhcmVfbGluayhzdHJ1Y3QgbXNtX2RwX2Rpc3BsYXlfcHJpdmF0ZSAqZHApCj4+ICAg
CWlmIChkcC0+bGluay0+c2lua19jb3VudCA9PSAwKQo+PiAgIAkJcmV0dXJuIC1FTk9UQ09OTjsK
Pj4gICAKPj4gLQlpZiAoIW1zbV9kcF9kaXNwbGF5LT5wb3dlcl9vbikgewo+PiArCWlmICghbXNt
X2RwX2Rpc3BsYXktPnBvd2VyX29uKQo+PiAgIAkJbXNtX2RwX2Rpc3BsYXlfaG9zdF9waHlfaW5p
dChkcCk7Cj4+IC0JfQo+PiAgIAo+PiAtCXJjID0gbXNtX2RwX2N0cmxfb25fbGluayhkcC0+Y3Ry
bCwgZHAtPnBhbmVsKTsKPj4gKwlyYyA9IG1zbV9kcF9jdHJsX29uX2xpbmsoZHAtPmN0cmwsIGRw
LT5wYW5lbCwgZHAtPnBsdWdnZWQpOwo+PiAgIAlpZiAocmMpIHsKPj4gICAJCURSTV9FUlJPUigi
RmFpbGVkIGxpbmsgdHJhaW5pbmcgKHJjPSVkKVxuIiwgcmMpOwo+PiAgIAkJLy8gVE9ETzogc2No
ZWR1bGUgZHJtX2Nvbm5lY3Rvcl9zZXRfbGlua19zdGF0dXNfcHJvcGVydHkoKQo+PiAtLSAKPj4g
Mi40My4wCj4+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
